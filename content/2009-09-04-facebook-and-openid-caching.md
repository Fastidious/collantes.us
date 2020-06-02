---
date: 2009-09-04T14:00:00Z
title: Facebook and OpenID caching
url: /2009/09/04/facebook-and-openid-caching/
wordpress_id: 10
wordpress_url: http://log.collantes.us/?p=10
categories:
- "tech"
tags: 
- "facebook"
---
When I first read that Facebook was going to allow OpenID logins, I was happy. OpenID means less usernames and passwords to remember. So I merrily went to setup mine, just to find out that their support was exclusively for OpenID version 2.0, and my implementation was 1.1. No graceful fall back, Facebook demands OpenID 2.0. So I decided it was time for me to upgrade my implementation for one capable to handle 1.1 and 2.0.

Of course, the first one I tried I did not like it (and that one worked perfectly with Facebook). I ended up picking up, configuring and using <a href="http://sourceforge.net/projects/simpleid/">SimpleID</a>. Well, when I went ahead and tried to used it in Facebook, I found out that Facebook wasn't contacting my delegation anymore. It had stored my OpenID (<a href="http://collantes.us/">collantes.us</a>) and match it to the first implementation I tried, the one I did not like, which no longer existed.

Well, I thought, Facebook has many millions of users, some caching is expected. So I waited, and waited. A week passed by, and still going to the wrong server. I emailed them, clearly stated the problem, got the first canned reply acknowledging. Two days after got the second canned reply brushing me off.

It has now being three weeks, and still Facebook insists on not going to <a href="https://collantes.us/">collantes.us</a> to check my OpenID delegation and reach the proper server. I wonder how long will it take. Makes me wonder how serious are they about OpenID.
