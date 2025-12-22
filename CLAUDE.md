# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal blog and website for Bart van der Wal, built with Jekyll and hosted on GitHub Pages.

## Development Commands

```bash
bundle install              # Install dependencies
bundle exec jekyll serve    # Run local dev server at http://localhost:4000
```

## Deployment

Push to `main` branch triggers GitHub Actions workflow for deployment.

Live site: https://bartvanderwal.nl

## Architecture

- **Theme**: Adam Blog 2.0
- **Language**: Dutch (`lang: nl`) by default. Exception: Quora posts remain English (`lang: en`)
- **Permalink style**: `/:title/`

### Blog Posts

Posts go in `_posts/` with format `YYYY-MM-DD-title.md`. Front matter requires `layout: post`, `title`, and `lang: nl` (or `lang: en` for English posts).

### Assets

Images stored in `assets/images/`.
