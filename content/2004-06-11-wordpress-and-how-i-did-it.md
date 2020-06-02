---
date: 2004-06-11T14:00:00Z
title: WordPress and how I did it
url: /2004/06/11/wordpress-and-how-i-did-it/
wordpress_id: 284
wordpress_url: /?p=85
categories:
- "tech"
tags:
- "wordpress"
---

This might as well be my last entry completely related or dedicated to WP. I am sure I will mention it here and there in the future, but it would have to be something very important for me to talk about it exclusively in one entry.

As the few of you know, I used to run Movable Type (MT) and I was happy with it. The only thing that always bothered me was the rebuild times, which were getting bigger and bigger and the fact the every comment posted would take from 2 to 5 minutes to go through. Certainly not a good thing&trade;.

So I decided to give WP a try. Installation was a breeze, no doubts about that, and I loved --from the very beginning-- the light feeling that came with it. Light is in fast. WP is simple to install, even simple to modify, yet quite powerful. And it is totally dynamic. Yes, I know MT has shipped for quite a while with a file that will allow dynamic serving, but that does not even get close. It is buggy, slow; forget it!

I ported my all CSS over. It took me a while, since I wanted to bring over CSS only and not the table based layout that I have before. WP imported all my previous MT entries without a hitch --well, almost. The rest was customize a few things (HTML things), add the <a href="http://www.huddledmasses.org" title="Home of the Acronym replacer">Acronym</a>, Eric Meyer <a href="http://meyerweb.com/eric/tools/wordpress/mw_next_prev.html" title="MW Next/Previous">Next and previous</a>, Adam Gessaman <a href="http://idly.org/2004/05/13/fixing-mt-urls-for-wp" title="Rewrite archives">Rewrite MT archives</a>, <a href="http://wiki.wordpress.org/NicerArchives" title="Nicer Archives">Nicer Archives</a> (for the <a href="/archives/" title="Archives">archives</a>, of course), and some other default plugins and my WP migration was almost done. Since I wanted clean URI's on pagination --on the front page, categories and monthly archives, I am running 1.3 pre-alpha (from the CVS), which already allows that. I am also using <a href="http://annevankesteren.nl/" title="Anne Vankesteren weblog">Anne</a> (yes, he is a guy) comments preview hack, which doesn't only allows for a comment preview but it does a very nice job at error handling, something WP itself lacks of. WP comes with comments moderation but I am not using it... for now.

The header images do not correspond with posts now as they used to, but they are randomly served and I am sporting a brand new <a href="/imprint/" title="Contact">contact</a> form, for easy getting in touch. I am also "serving" valid RSS 2.0 (Posts and Comments), Atom 0.3 and CDF (bottom right). You can also add /feed/ at the end of any individual entry to get the comments RSS 2.0 feed for just that entry. Same applies to categories and months archives. Must of the imported entries from MT have wrong dates and times on the RSS feed. Hey, nothing is perfect!

And that's about it. Any questions, comments, suggestions?
