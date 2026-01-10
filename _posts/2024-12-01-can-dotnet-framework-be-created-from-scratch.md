---
layout: post
title: "Can a .NET framework be created from scratch?"
subtitle: "Exploring the feasibility of rebuilding .NET"
date: 2024-12-01
date_started: 2024-12-01
lang: en
tags: [dotnet, software, quora]
canonical_url: "https://www.quora.com/Can-a-NET-framework-be-created-from-scratch"
---

*Originally posted on [Quora](https://www.quora.com/Can-a-NET-framework-be-created-from-scratch)*

It took Microsoft years to develop .NET. Everything that was created, can in theory also be recreated from scratch (i.e. from nothing). So yes. But given how inefficient this is, this rarely happens in practice. It's not the way to proceed or make money. So no.

Joel Spolsky wrote a good blog about this a long time ago — it's famous in certain circles — called "Things you should never do". He gave the example of Netscape who tried to rebuild their Navigator browser from scratch thinking it would be quicker than to upgrade and fix the existing application/code base. However the company went bankrupt due to that decision, as competitors could catch up with them as they underestimated the complexity and value of what they had built (the bankruptcy however DID lead to the open source Mozilla organization, MDN and other things, which are still valuable).

Funnily enough, a — by now - well known individual named Miguel de Icaza DID sort of recreated .NET framework from scratch: the Mono project (separate company). He did this to be able to run .NET on macOS and Linux, and also on iOS and Android which was a profitable growth market. In other words, a non-Windows environment while Microsoft still targeted only their own MS-DOS successor :).

However, he did still have the .NET specifications, which in a way could be seen as the essence of .NET. And I don't know how much he leveraged from any existing code base. However due to the Microsoft and .NET implementation still being closed sourced then, he would have had to recreate much. Note that the .NET specification (interface) was actually open source pretty early on. C# was offered to ECMA. I guess in an attempt to mimic the more open nature of Java, which Microsoft had tried to take over in those years, and then after that didn't succeed, they started .NET and created C#, essentially a 'better Java'. Microsoft then was still single platform, but offered several programming languages and frameworks (VB.NET and F#) unlike Java.

Then later, when Microsoft DID go multi platform, to support Linux and Mac platforms Microsoft did NOT create it from scratch, but took (bought) over Icaza's Mono (then called Xamarin) and developed further from there. By now MS seemingly pulled a 180, and is largely open source since then. They have the most open source software according to some measures. .NET is now also further developed than ever. So to recreate it from scratch now I think is less probable than ever.

But you could try to pull another 'Icaza', and get .NET to run 1000x or more faster on quantum infrastructure or something. You'd certainly get rich with Microsoft buying you over (Edit: just like they essentially did with OpenAI from 2019 onward…).
