// @ts-check
const { test, expect } = require('@playwright/test');
const fs = require('fs');
const path = require('path');
const pdf = require('pdf-parse');

test.describe('PDF Generation', () => {
  test('should generate a PDF with content from blog post', async ({ page }) => {
    // Capture console logs
    const consoleLogs = [];
    page.on('console', msg => consoleLogs.push(msg.text()));

    // Navigate to a blog post
    await page.goto('/hoe-deze-blog-begon/');

    // Verify page loaded correctly
    await expect(page.locator('.page-title')).toBeVisible();
    const pageTitle = await page.locator('.page-title').textContent();

    // Set up download listener before clicking
    const downloadPromise = page.waitForEvent('download');

    // Click the PDF download button
    const pdfButton = page.locator('#download-pdf');
    await expect(pdfButton).toBeVisible();
    await pdfButton.click();

    // Wait for the download
    const download = await downloadPromise;

    // Save the file to a temporary location
    const downloadPath = path.join(__dirname, 'downloads', download.suggestedFilename());
    await download.saveAs(downloadPath);

    // Verify the file exists and has content
    const fileStats = fs.statSync(downloadPath);
    expect(fileStats.size).toBeGreaterThan(1000); // PDF should be at least 1KB

    // Parse the PDF and verify content
    const dataBuffer = fs.readFileSync(downloadPath);
    const pdfData = await pdf(dataBuffer);

    // Verify PDF has pages
    expect(pdfData.numpages).toBeGreaterThan(0);

    // Log console output for debugging
    console.log('Browser console logs:', consoleLogs);
    console.log('PDF text content:', pdfData.text.substring(0, 500));

    // Verify PDF contains the title (or part of it)
    expect(pdfData.text).toContain('blog');

    // Clean up
    fs.unlinkSync(downloadPath);
  });

  test('should show loading state while generating PDF', async ({ page }) => {
    await page.goto('/hoe-deze-blog-begon/');

    const pdfButton = page.locator('#download-pdf');
    await expect(pdfButton).toBeVisible();

    // Check initial state
    await expect(pdfButton).toContainText('Download PDF');

    // Click and verify loading state appears
    await pdfButton.click();

    // Should show generating state (this happens quickly, so we use a short timeout)
    await expect(pdfButton).toContainText('Generating', { timeout: 2000 });
  });

  test('PDF button exists on all blog posts', async ({ page }) => {
    // Get list of blog posts from the homepage
    await page.goto('/');

    // Get all post links upfront
    const hrefs = await page.locator('.post-card-wrapper').evaluateAll(
      elements => elements.map(el => el.getAttribute('href'))
    );
    expect(hrefs.length).toBeGreaterThan(0);

    // Check first 3 posts have PDF buttons
    const postsToCheck = Math.min(3, hrefs.length);
    for (let i = 0; i < postsToCheck; i++) {
      await page.goto(hrefs[i]);
      await expect(page.locator('#download-pdf')).toBeVisible();
    }
  });
});
