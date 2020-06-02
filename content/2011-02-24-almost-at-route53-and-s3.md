---
date: 2011-02-24T14:00:00Z
title: Route 53, wish I could have used you
url: /2011/02/24/almost-at-route53-and-s3/
categories:
- "tech"
tags:
- "amazon"
---

Ever since Amazon announced it's [Route 53](http://aws.amazon.com/route53/ "Amazon Route 53") service I have been dreaming on using it, but since I dislike to have services too spread out (got [Google Apps](http://www.google.com/apps/intl/en/group/) and [Linode](http://www.linode.com/) now), I held up. Two days ago or so, Amazon announced [new features](http://aws.amazon.com/about-aws/whats-new/2011/02/17/Amazon-S3-Website-Features/ "Static websites in your bucket") that make hosting static websites---such as this one---on [AWS S3](http://aws.amazon.com/s3/) buckets possible. This was it, just what I have been waiting for!

Promptly I set off to migrate one of my domains over Route 53. New buckets were created on my [S3](http://aws.amazon.com/s3/), to accommodate the new websites. Started to create all needed entries: Google Apps, all old "`IN A`" were converted to "`IN CNAME`". Ready, set! Then it hit me.

Since the rules of DNS [forbid CNAMEs](http://www.ietf.org/rfc/rfc1034.txt)[^1] at the zone apex, you cannot set *domain.tld* (a "naked" domain) to also be a `CNAME` for your Amazon web enabled bucket. You need an "`IN A`", an IP for that, which Amazon doesn't provide on S3. Bummer!

Too bad, so sad. Reversed everything. As we were!

[^1]: If a CNAME RR is present at a node, no other data should be present; this ensures that the data for a canonical name and its aliases cannot be different.
