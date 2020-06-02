---
date: 2009-09-09T14:00:00Z
title: IP migration
url: /2009/09/09/ip-migration/
categories:
- "personal"
- "tech"
tags:
- "ucf"
- "linux"
---
I have a deadline to meet. I must migrate all my servers, and clients to a private IP space. Servers must be done --- if at all possible --- by September 30th. Clients by October 30th. That is, this year. Problem is, I have never done anything close to it, and there are so many things that need to be done at once, I don't know where to start.

I have a Linux DNS/DHCP to change (Internet facing one). I have an AD DNS to change (AD, as AD integrated zones. Three servers, actually. All for internal AD use). I have 20 servers to change (file, print, DFS, web multi-homed, etc). There are close to 1000 clients as well, but those, once DHCP is migrated, will just fall in place. But... I also have special areas, like laboratories, for example, that are currently assigned to a specific IP segment (using their MAC).

Thinking *where* to start.

I tried adding a new IP to the Linux box (the one with DNS/DHCP), to start at a point. It is breaking DNS when I do that. DNS resolution stops as soon as "<code>ifup ifcfg-eth0:0</code>" is issued. I am drawing a blank here, since <code>ifcfg-eth0:0</code> is simply a copy of <code>ifcfg-eth0</code>, reflecting the other IP, and the <code>DEVICE=eth0:0</code> instead of <code>DEVICE=eth0</code>. All by the book. How is that causing DNS to malfunction?

I will come back and update, or follow up on a different post. Open to suggestions though.

<h3>Update</h3>

Changing the name to <code>ifcfg-eth0:1</code> worked. Was <code>ifcfg-eth0:0</code> getting confused with eth1 (the second --- and disabled --- NIC)? I am not sure, but certainly the naming had something to do with it. I never did this on servers with two NIC, and most of the HOWTOs do not take that into consideration.
