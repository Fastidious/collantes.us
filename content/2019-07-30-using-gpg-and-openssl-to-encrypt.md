---
date: "2019-07-30T13:15:56-04:00"
title: "Using Gnupg and openssl for encryption"
authors: []
description: "Using gpg, and openssl to encrypt files. They are both available for all most commonly used operating systems."
comments: false
categories:
  - tech
tags:
  - openssl
  - gpg
---

I have used `Gnupg` to encrypt my private files, specially those that I upload to the clouds, for a long time. I used to encrypt to self, using my own key, then later moved to symmetric encryption only. The command is easy:

### Using Gnupg

To **encrypt**:

```bash
gpg --cipher-algo aes256 --symmetric file.txt
```

Adding the option `--armor` to the above will produce an `ASCII` armoured encrypted file.

To **decrypt**:

```bash
gpg --output file.txt --decrypt file.txt.{gpg,asc}
```

Use `asc` ending to decrypt, if encrypted with the `--armor` option.

### Using OpenSSL

Although `Gnupg` is common, `openssl` is even more so. Encrypting with `openssl` is a breeze as well. Even though this should work on earlier versions of `openssl`, I am going to assume `openssl` v1.1 and up:

To **encrypt:**

```bash
openssl enc -aes-256-cbc -md sha256 -iter 1000 -in file.txt -out file.txt.enc
```

To **decrypt:**

```bash
openssl enc -d -aes-256-cbc -md sha256 -iter 1000 -in file.txt.enc -out file.txt
```

If a `base64` output is preferred, then the option `-a` should be added to both, encryption and decryption.