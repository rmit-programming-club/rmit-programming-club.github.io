---
layout: post
title: Correctness Series: Frontend Websites and TypeScript
author: Sam Nolan
categories: [Workshop]
---
This tutorial will teach you TypeScript

<!-- more -->

Of all considerations of making software, software being correct is probably the
biggest one.

This series of workshops and posts takes a deep dive into ways that you can verify
correctness. Particularly, it looks into ways that we can improve correctness
by use of modern technology and type systems.

This post is for people interested in learning new technology, and leaving you
with a large amount of ways that you can ensure that the software that you build
actually works, and are aware of technologies that are out there.

## The Game
The [Mythical Man Month](https://en.wikipedia.org/wiki/The_Mythical_Man-Month)
claims that for most software projects, 1/3 of the time
is spent in specification, 1/6th in Development, 1/4th in Integration Testing and
1/4th in System Testing. These ratios happen regardless of whether you plan for
them. If you specify too little, you will have to make up for it later. If you
don't do enough testing early, you'll have to do more testing later.

This means that it is important that you discover bugs would come up later quickly.
A feature will often go through a workflow that looks like:

 - Feature is Coded
 - Unit Tests pass
 - Code Review passes
 - Integration Tests pass
 - System Tests pass
 - User Test pass

The problem is that the later tests are expensive and take longer than the earlier
ones.

The aim of this workshop series, and a game you'll get to play, is to move certain
classes of bugs up this hierarchy. So that problems that would usually come up
in integration tests come up in code review or even earlier.

## The Roadmap
We'll look through some ways that we can improve the processes and tools that
we use to build software so that we can have a more fun experience. We'll cover:
 - Typescript and Web Development
 - Rust and Systems Programming
 - Elm, Web Development and Functional Programming
 - Isabelle and Interactive Theorem Provers

Meanwhile, we'll get you to try some pair programming in order to try more organizational
ways of finding and correcting errors.

## So you want to build a frontend?
To build a frontend, you will almost always need JavaScript. 

Sadly, JavaScript has its faults. One of the major faults is a cycle that is
all too common when developing. One develops a feature, finds that some runtime
error occurs, goes back to fix it and repeats until the change you made
actually works. This wastes time and just causes frustration.

Interestingly, this can be really easy to fix. The solution is to use [TypeScript](https://www.typescriptlang.org/)
(or [Flow](https://flow.org/), [PureScript](https://www.purescript.org/) or [Elm](https://elm-lang.org/)).
TypeScript is a language that compiles to JavaScript. Meaning you code in TypeScript,
and the code gets converted into JavaScript for your website.

If you know JavaScript, you already know TypeScript as TypeScript is a superset
of JavaScript. This means that all JS code is also TypeScript code.

All TypeScript does is add the ability to use static types in your programming.

Lets get you some TypeScript. We'll be creating a task manager that calculates
how busy you are.

The tutorial for TypeScript [can be found here](https://www.typescriptlang.org/play?#code/PTAEHUFMBsGMHsC2lQBd6gCoE8AOkBlWAJwEtdUBCAKBCwAtIBnFBRZAO1SdCfvgCu0ACahG0XKGyDQAjsMjEmqAIbzQa0bmgrsoAO6lU9NPVI9IADxWJtkAHTVaYTGZ7mNaFUwDWoRGoqAOaQnKiguCrEKsKkQYimKuEAkqDEkCrQ0HqQHABW8Nj2oMkA5FmgpFzE8MICsChGaBjSAs4GZtAoVtrwZBxBWHiEJOSoxa4okdGx8ZU8TKS2XcVQ5dCgIeHoleE6qIrFAEIC4QBmpEqoADTtjOnzoILEoBdXoABGTfBnQ-hEZAoTjorg8ClgOmiqFI8A4oBIGQOPBUaGG8MyXVEACJMN4fFjigBNGSwNQaJiLIJwpo7ABSKgAbioAWMnh88pBYNx2jt0soyFzTCgkqgyB9TsxEttGHoosKsvB9JBRDt6IzINRUGjcb5QABeUAAb2ooFNoA4NkgAC5eKKqkFbmbQHUoTCODaOAJEB9FI6zXVraAACJJDUAX2BLkYLA0D0QelUviYxQA4hgVIwYhp1MqadGUDtEz4eMYklIZGqGawkPbZLhHHQAHLwaENKXlgTojilcK4U4aVB28VI9ty80typw4wocFdV2wjQfeBV67ZlVq1A8xhsjlcniVgsYH1PX7T+F9dKCrX4YrN8Kw7JS1fDjq5DTCWIDc2QfQ8vFMVcz1zdAXh+M5FB4BAFHPZZIGhBcPm8ZUT1PbcRTFCV3HCHwOEVZMSlQUomHadIMT0NV5GwGg6BdJI3UeKoxGeZNqAQDhlH8bAdWLUAbW4gBtABdfVQH4w1QBNJ0zQtZAbVKFM4PbABBCk4g4MJg1hSBSlXSSpOdAR53dUAAEYAAY-X0gMPR-YNQwACixAAmMynJMgBaMyAA53JcrEAEo9NAMNLKNIKnRkwNSnAMgDlAAgkBQJSlSYRK-hGQFCN0-TTVo+DjJM0KnWs799Dsg5HJctzPJ8pyABYAqCkKguNHLzUtG0sVpeBGLPAAFGogmidhawAYWgAQPixIr-UMujYRtMz7EK8LZsDDhbJDCr-NAOgCEUnZMFqXQmqCwTI1AZsyrOPohX8YJSFgCY3HROAhFDEttyxQyQg4WBsCxE9PCLYoAFViF+-60kgXA+Vybk6H4MqllwPpVC4YG8UeG6XlaZoYLsOLUthYpkkIhYUcfM88von4hT-XVYgZUgFFED4E23aFkA7MR1XxthCcacYCOh2HmHh-dFX8eoTDxg8eQwfQ+j8BczyLCJFGdXR8a2XZnS0z49CMIiDJnUNHDOOQuXorYAH0ftyf7bZ+W2i3sos+LxHaPS9H0XnEoKmxbR75VSu7rxQSkOCMQyUFV7dLb+-LSfCJhdE+ssaRUHxJRRbjA7ATRodQQz2M8T1vUOUAADVFD0AQWEt6AaCCrpwlwsqDQ2sqtsgez-IAbicJ06FSXXqdDIH0EQC8pbD0twiadIxZYLhPoLLGfVrAMBzu3JhALqfjqKeKMAXnnSThA8vCTU3mmEbXcPvKtiADRwnTbu+u82hzAuKgQHAsFQL3d2eJ7Bvy2JgJYfcdoAGpTKBUPpMDQM85D3l+IgUgWRzCclhMIHgaCsG7BNm-IKbEOKxDOGcKB3MDT2QgXBGhMDQDuXHPoewkDoH90HkgtCqCMZ0wftgAhXAiEBjIbCChpAqEhmESJSh1DoG7VAPZcyZkzKgAAFSgAAGwaO0XorRoB6o8MPgACSlgEDg5FmIaxeEInmG1kI7CVsQFWU5OZ4iCukEuxApxgJpguMACjZFMCHhGdooIeCJ2tguRYyw9BbHXrICGjs9B0wyLAEw6si4xHwUKBI6Atj3EAhgIIpAqztDxiiCufsgb8EMjwPGTiVSK2VnYrW2BqAxPys0VQ0B7apL+tgUBt9Pa+CEt7c0vtFDGkPlADQQQVBVFXEqXmVZUT4F4GpGOfJnrdFiCBAmOgqjuFQuLWMKAn6vHgAqJUwh35mnIeEB2f1SCSh9pXYgQkRJFmTAEXA9k7avKdi7Isf8zQ+NLikyG7zkzpDqA0ey9kVDPh2nqAAfJ4eBHxAoRLoANKo0oUAACVmBCE3OQ25DhoDwCCO7FsmRBmQxGfGbiTB-KIKDmVc+rRSgbJYG+YwHgVC4G0I9eacJmmQGcRgbQ2tDDGD1jsOQCgrhFzPEreQmt2h0xwP8UYFBSbrMjmlFmGRom3TxjsSmoR4ZWgutxUyq4LXYBtAAMSqKIQQ4R9AbjuiCvQSshBs0PDPYgNR2EMA8HwPCPM-VwXuB2doCAQ28BUOBR8sN4AkG8NCC0cVpwxj+Y4SJWMnKrmQLEL0NoErEGJTfHi7MhSXBhWk4oCV2x4xwlLP1j1sn-h5rGkN7RwDtIXG8ZQpa6AAHkXgBBzk8ac87ajSIlflM5Q65VdCQi3UeTEtl4xuqq0wHgG6QCbpQIAA).

## Going Further
If you haven't been convinced already, I hope you have been now. TypeScript
is really easy to add to current projects.

This is only the beginning however, and we'll cover other systems soon. Including
ones where it's impossible to write _any_ runtime errors.

Can't wait to see you there.
