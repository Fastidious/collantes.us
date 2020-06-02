---
date: 2015-08-29T14:00:03Z
title: Jekyll and Git
url: /2015/08/29/jekyll-and-git/
categories:
 - "tech"
tags:
 - "jekyll"
 - "git"
 - "vultr"
 - "github"
 - "atom"
---
I have been using [Jekyll](/2011/02/03/forget-hyde-get-jekyll/) for a while now, but all this time I have been generating it on the server, That is, I had had a directory on the server holding the Jekyll files, in which I would run `jekyll build` to generate the website. Not too streamlined.

Before hosting this weblog on [Vultr](http://www.vultr.com/?ref=6815414), I had it on [GitHub](https://github.com/), and their [Pages](https://pages.github.com/) would do the publishing for me, right after a commit, which was great. Yesterday I decided to implement the same, but on my VPS. This is what I did:

1. Created empty git repository (`git init --bare website.git`).
2. Cloned it.
3. Added my Jekyll files.

What was left was to add the following `post-receive` hook[^1]:

~~~bash
#!/bin/bash -l
GIT_REPOSITORY=/path/to/my/website.git
TMP_GIT_CLONE=/tmp/git/website
WWW_ROOT=/path/to/my/website

git clone $GIT_REPOSITORY $TMP_GIT_CLONE
jekyll build --source $TMP_GIT_CLONE --destination $WWW_ROOT
rm -rf $TMP_GIT_CLONE
exit
~~~

Now a few seconds right after committing, my website will show the changes. Being able to use Atom with `markdown-writer` to compose entries, and use git to deploy them is a bliss.

[^1]: Thanks to [Matt Harzewski](https://www.digitalocean.com/community/tutorials/how-to-deploy-jekyll-blogs-with-git) for pointing me to the right path.
