---
date: 2005-05-28T14:00:00Z
title: PGP Corporation Decadence
url: /2005/05/28/pgp-corporation-decadence/
wordpress_id: 129
wordpress_url: /?p=129
categories:
- "tech"
tags:
- "pgp"
- "rants"
---

Recently PGP Corporation released their latest version of the PGP software created by Phil Zimmerman and made famous by millions of users around the world (me included). I wish I could say such latest release is great, but I can't.

The new PGP Desktop 9.0 (or 9.0.1 beta as of this writting) come with a few new "features" and lacks of a few others that any old school PGP user might notice right away. It also comes with it fair amount of bugs and programming slopiness. The most prominent new feature is the lack of an Outlook plugin, since it comes with a built-in Mail Proxy. It also comes with a Whole Disk Encryption that, as the name reads, allows you to completely encrypt your hard drive, with authentication at boot time.

The release is buggy and lacks of decent documentation and formal support. The only support available is at the <a href="http://forums.pgpsupport.com/" title="PGP Support forums (user powered)">PGP Forums</a>, but little help can be gotten from there. The PGP Whole Disk Encryption does not works on RAID systems (at least it doesn't on my SATA RAID 1), spitting out a BSDO. The Mail Proxy re-writes your emails, breaking up formatting and creating random mayhem. If you want to know first hand the problems that people has encountered, browse over their forums and see it for yourself. I also encountered many other little problems, too many to list.

If you are using PGP 8.0.x (or any other version as a matter of fact), I recommend you stick with it, the new 9.0 bring more headaches than goodies. And if you really want to "upgrade", go ahead and grab <a href="http://www.gnupg.org/" title="GNU Privacy Guard">GNUPG</a> and the <a href="ftp://ftp.g10code.com/g10code/outlgpg/outlgpg-0.93.zip" title="Great Outlook Plugin">plugin that make it interact with Outlook</a> or <a href="http://enigmail.mozdev.org/" title="PGP Thunderbird Extension">Enigmal</a>, if you use <a href="http://www.mozilla.org/products/thunderbird/" title="The Best Email Client">Thunderbird</a>. For filesystem tasks (signing, encrypting, decrypting, hashing, etc) use <a href="http://www.jumaros.de/rsoft/" title="GPGShell">GPGShell</a>.

<strong class="note_update">Note <span class="note_update_timestamp">29 May 2005</span></strong>

This entry is a stub. It might grow if I decide to create the long list of problems that PGP 9.0 has brought.