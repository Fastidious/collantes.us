---
date: 2015-10-13T14:00:00Z
title: Backing up and restoring GPG keys
description: "Relatively simple process to back up, and restore important GPG keys. Do it if, like me, you encrypt your important documents with your GPG key."
url: /2015/10/13/backing-up-and-restoring-gpg-keys/
categories: ["personal","tech"]
tags: ["gpg"]
---

If you use GPG to occasionally encrypt and/or sign your email, or to encrypt your files before placing them on the cloud, you will understand how important it is to have a backup of your GPG keys. Similarly important will be to know how to restore them as well.

### Backing up your keys and configuration files

To back your private, and public keys, as well as your trust database, you will do[^1]:

~~~bash
gpg --armor --export-secret-keys > ~/Desktop/gpg_private_keys.asc
gpg --armor --export > ~/Desktop/gpg_public_keys.asc
gpg --export-ownertrust > ~/Desktop/gpg_ownertrust.asc
~~~

You might want to backup your `gpg.conf` and `gpg-agent.conf` as well:

~~~bash
cp ~/.gnupg/gpg.conf ~/.gnupg/gpg-agent.conf ~/Desktop/
~~~

Next, you will want to compress all the files into a single archive:

~~~bash
cd ~/Desktop/; zip gpg_stuff.zip gpg_private_keys.asc gpg_public_keys.asc gpg_ownertrust.asc gpg.conf gpg-agent.conf
~~~

Finally, encrypt  `gpg_stuff.zip` before uploading it to you cloud service of choice:

~~~bash
gpg -c -z 9 --require-secmem --cipher-algo AES256 --s2k-cipher-algo AES256 --s2k-digest-algo SHA512 --digest-algo SHA512 --s2k-mode 3 --s2k-count 65000000 --compress-algo BZIP2 --bzip2-compress-level 9 gpg_stuff.zip
~~~

Make sure to remember the password you used, as you will not be able to decompress the files if you forget it, and your keys and configuration files will be rendered worthless.

### Restoring your keys and configuration files

To restore the key and configuration files, you will first need to decrypt and decompress `gpg_stuff.zip.gpg`:

~~~bash
gpg gpg_stuff.zip.gpg; unzip gpg_stuff.zip
~~~

And then restore the keys and trust database:

~~~bash
gpg --import gpg_private_keys.asc
gpg --import gpg_public_keys.asc
gpg --import-ownertrust gpg_ownertrust.asc
~~~

Finally, copy your configuration files to the proper directory:

~~~bash
cp gpg.conf gpg-agent.conf ~/.gnupg/
~~~

[^1]: This assumes your are using OS X. Change destinations depending on your OS accordingly, if using another Unix alike OS.
