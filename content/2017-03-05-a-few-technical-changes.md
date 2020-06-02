---
categories:
- "tech"
date: 2017-03-05T19:28:16-05:00
description: ""
tags:
- "vultr"
- "jekyll"
- "hugo"
- "ubuntu"
- "freebsd"
- "linux"
title: A few technical changes
---
A few things have happened on my current server setup. The biggest one was my move from [FreeBSD](https://www.freebsd.org) to [Ubuntu](https://www.ubuntu.com/). I do not have complains about FreeBSD --- how could I? --- but I wanted to play with more recent stuff, and it was becoming very hard to do under BSD. I also wanted a refresh, since I had been running that VPS for a while and it was starting to feel "dirty."

So, I spawned up an [Ubuntu 16.04 LTS](http://releases.ubuntu.com/16.04/) VPS, and migrated. It all worked like a charm, took couple of hours, mostly because I really enjoy doing things manually, without automation. To top it off, [Vultr](http://www.vultr.com/?ref=6815414) (affiliated link) upgraded their plans (and launched a brand new, $2.50/month one), so I now have 1GB RAM, and 25GB SSD, for my $5/month plan. Such a sweet deal!

I also changed my blog static generator from [Jekyll](https://jekyllrb.com/) to [Hugo](http://gohugo.io). The move was driven by the desire to gain speed (Hugo, writen in [Go](https://golang.org/), is very fast), and by wishing to get rid of the many dependencies Jekyll has (being Ruby based and all). Additionally, I am hosting a presence, albeit pretty simple, for all my domains, all under [Letscrypt](https://letsencrypt.org/) SSL. I am also using [Gitea](https://gitea.io/) to manage my [gits](https://git-scm.com/) via the web. This very own weblog is generated upon a commit.

Finally, I am also running a second Ubuntu server on Azure, which I am using as my [VPN](https://github.com/hwdsl2/setup-ipsec-vpn), and test server, for now.
