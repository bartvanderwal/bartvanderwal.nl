---
layout: post
title: "What is a front-end framework?"
subtitle: "And does the definition apply to Bootstrap or Angular?"
date: 2024-12-02
date_started: 2024-12-02
lang: en
tags: [frontend, webdev, quora]
img: posts/what-is-a-frontend-framework.png
canonical_url: "https://www.quora.com/What-is-a-front-end-framework-And-does-the-definition-apply-to-Bootstrap-or-Angular"
---

*Originally posted on [Quora](https://www.quora.com/What-is-a-front-end-framework-And-does-the-definition-apply-to-Bootstrap-or-Angular)*

A front-end framework (note the hyphen (`-`) in front-end) is a framework for the front-end :). This applies to both Bootstrap and Angular, though a bit more to the latter. But that's probably not enough to answer the question, so let's define the terms in more detail.

First front-end generally refers to a *web* front-end. A web front-end is simply a webpage or bunch of pages together. Perhaps also a single page application (or series thereof 'pockets of SPA') which took over in many websites after the use of AJAX became commonplace. I won't go into AJAX, but should also note that a front-end could also extend to an app, both native or hybrid. At least as long as the app has a UI, and also works as the client in a client-server architecture (e.g. the app gets data, or pulls data from a backend like most mobile apps do). But I'll assume web frontend in the rest of my stories.

These web front-ends run on HTML, CSS and JavaScript. Three languages meant for defining content, layout and behaviour of the page respectively. Content is king, and it (.html) is what you get sent first when an end user's browser requests a page, but it brings the layout (.css) and behaviour (.js) with it through references.

To help with one or more of these three languages you can use a front-end framework. This provides some standardisation and common functionality. Either with HTML, CSS or JavaScript. Angular focuses almost exclusively on the JavaScript. Because the question mentions Angular instead of AngularJS, which strictly refers to Angular v2 and higher, which uses TypeScript instead of JavaScript. But this all compiles down to JavaScript again, so the browser only gets .js. The only thing Angular has to do with CSS, is that it allows you to specify some CSS for a UI component that you define in Angular, but it contains no CSS at all. So Angular would better be called a JavaScript framework. But any JavaScript framework is a front-end framework (but not the other way around).

Bootstrap focuses much more on the CSS part. And provides common HTML templates and CSS classes for visual things like buttons, pulldowns and cards. However there is also a bit of JavaScript in there. But I would call Bootstrap a front-end library sooner than a front-end framework.

## Library vs Framework

So I end my answer at the final required definition(s): what is the difference between a library and a framework? They're both a collection of code that provides (common) functionality for reuse by another application. So the terms are also used as two synonyms, which can add to the confusion.

But strictly speaking an often used distinction between them is that a framework also calls into the code that you provide to it through writing your program. While a library only provides functionality that your code calls. E.g. by using only libraries and no frameworks you stick to the Hollywood principle: 'Don't call us; we'll call you' ;)

E.g. frameworks use the 'template' pattern - for you OO people out there - and let you fill in some details, but is indeed more opinionated as others have stated. A framework decides (at least in part) the order in which things are executed, or what parameters you should define in what order in your own methods.

A library is more static. All the functionality (e.g. methods) it contains wait for your program to call it and then return some output or perform some (wanted) side effects. Information flow can be both ways, but control flow is one way.
