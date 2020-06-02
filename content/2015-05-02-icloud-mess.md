---
date: 2015-05-02T14:00:00Z
title: iCloud mess
url: /2015/05/02/icloud-mess/
categories:
- "tech"
tags:
- "apple"
- "icloud"
---

Having lost many photos of certain sentimental value a few years ago has made me paranoid. Ever since I lost my child's first four years of photographic memory I have kept copies of our family photos and videos in two different places. I keep a copy of photos and videos in our [Synology NAS](http://www.amazon.com/Synology-DiskStation-Diskless-Attached-DS411J/dp/B0049MPQGS "DS411j") at home, which backup photos to [Amazon S3](http://aws.amazon.com/s3/ "Amazon S3") and videos to [Glacier](http://aws.amazon.com/glacier/ "Amazon Glacier").

When Apple announced their [iCloud](https://www.apple.com/icloud/ "Apple iCloud") plans, and the ability to keep my entire photo library on the cloud, I was one of the first to [sign up][1]. After the release of 10.10.3 I decided to try it again. What could be better than having every photo show on all my Apple devices? Little did I know I was about to embark in a wasting time journey. First struggle was importing my 80 GB photo archive into [Photos.app](https://www.apple.com/osx/photos/ "Photos app"), so it could be synchronized with iCloud. At the end of what it was a very long time, I was told that a little bit over 1,000 of my photos --- out of 26,000+ --- could not be imported because the file format was not recognized. They were all JPEG. Since I had no way to just re-import those that failed, I decided to re-import all again, trusting that existing ones would either be overwritten or simply not imported, since they were already there. I was wrong.

Following the second import, which ended without failing, I realized many photos were repeated. Not once, but some had quadruple copies. The ultimate nightmare had happened. After having taking [painstakingly care](http://www.araxis.com/find-duplicate-files/ "Araxis Find Duplicated Files") keeping my archives de-duplicated the worse was in sight. The 26,000+ photo archive became 29,000+. All of it on iCloud, and without a fix at hand.

Now, the above was not the only problem. Even if you choose to download an optimized version of your photos on your very small sized iDevices, when you have over 80 GB worth of photos on iCloud it will overflow them, which is precisely what happened to me next. My 16 GB iPhone 5S was left completely full, so were my iPads. There is no way to do a selective synchronization with iCloud, and there is no way to disable iCloud Photo Library on an iPhone in such way one can still upload my photos to iCloud (up), but not synchronize them all (down). At least, I could not figured that out --- please if someone knows a way, correct me, and let me know.

I ended up canceling my 200 GB a month iCloud storage --- which I was charged for --- and deleting my entire iCloud Photo Library. Instead, I increased my Google storage quota. I still keep a copy on my NAS, which backs them up to S3 and Glacier, plus synchronizes them with Google Photos. Photos on Google Photos (part of Google Plus) will soon show up on Google Drive as well, which in turn I will be able to synchronize with my iMacs.

For the time being, I will not touch Apple iCloud for big data storage until they have proven to have reached maturity.

[1]: /2014/11/13/icloud-drive-on-standby/
