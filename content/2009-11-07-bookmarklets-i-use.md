---
date: 2009-11-07T14:00:00Z
title: Bookmarklets I use
url: /2009/11/07/bookmarklets-i-use/
wordpress_id: 59
wordpress_url: /bits/?p=59
categories:
- "tech"
tags:
- "bookmarklets"
---
These are some of the general bookmarklets I use. I have them synchronized with Chrome and Google Docs, but I am listing them here in case I want to share them with someone else, like you (yes, you there, reading this now). Here there go:
<ul>
<li><a href='javascript:q=""+(window.getSelection ? window.getSelection() : document.getSelection ? document.getSelection() : document.selection.createRange().text); if (!q) q=prompt("Enter your Tweet","");if (q!=null) location="http://twitter.com/home?status="+escape(q); void 0'>Tweet it!</a></li>
<li><a href="javascript:var t=((window.getSelection&&window.getSelection())||(document.getSelection&&document.getSelection())||(document.selection&&document.selection.createRange&&document.selection.createRange().text));var e=(document.charset||document.characterSet);if(t!=''){location.href='http://translate.google.com/translate_t?text='+t+'&hl=en&langpair=auto|en&tbb=1&ie='+e;}else{location.href='http://translate.google.com/translate?u='+escape(location.href)+'&hl=en&langpair=auto|en&tbb=1&ie='+e;};">Translate to English</a></li>
<li><a href='javascript:q=""+(window.getSelection ? window.getSelection() : document.getSelection ? document.getSelection() : document.selection.createRange().text); if (!q) q=prompt("Enter Keywords And/Or Operators","");if (q!=null) location="http://www.google.com/dictionary?aq=f&langpair=en|en&hl=en&q="+escape(q); void 0'>Google Dictionary</a></li>
<li><a href="javascript:if(!document.getElementById('download-youtube-video')){var%20video_id=null;var%20video_hash=null;var%20video_player=document.getElementById('movie_player');if(video_player){var%20flash_variables=video_player.attributes.getNamedItem('flashvars');if(flash_variables){var%20flash_values=flash_variables.value;if(flash_values){var%20video_id_match=flash_values.match(/[^a-z]video_id=([^(\&|$)]*)/);if(video_id_match!=null)video_id=video_id_match[1];var%20video_hash_match=flash_values.match(/[^a-z]t=([^(\&|$)]*)/);if(video_hash_match!=null)video_hash=video_hash_match[1]}}}if(video_id==null||video_hash==null){var%20args=null;try{args=yt.getConfig('SWF_ARGS')}catch(e){}if(args){video_id=args['video_id'];video_hash=args['t']}}if(video_id!=null&&video_hash!=null){var%20div_embed=document.getElementById('watch-embed-div');if(div_embed){var%20div_download=document.createElement('div');var%20div_download_code='%3Cbr%20/%3E%3Cspan%20id=\'download-youtube-video\'%3E%3Ca%20href=\''+'http://www.youtube.com/get_video?fmt=18&video_id='+video_id+'&t='+video_hash+'\'%20onclick=\'blur(this);\'%3EDownload%20as%20MP4%3C/a%3E';try{if(yt.getConfig('IS_HD_AVAILABLE'))div_download_code=div_download_code+'%20|%20%3Ca%20href=\''+'http://www.youtube.com/get_video?fmt=22&video_id='+video_id+'&t='+video_hash+'\'%20onclick=\'blur(this);\'%3EDownload%20as%20MP4%20HD%3C/a%3E'}catch(e){}div_download.innerHTML=div_download_code+'%3C/span%3E';div_embed.appendChild(div_download)}}}void(0)">Get Youtube MP4</a></li>
<li><a href="javascript: void (window.open('http://screenr.com/record/recordingbookmark'));">Record your screen</a></li>
<li><a href="javascript: location.href='http://chart.apis.google.com/chart?cht=qr&chs=250x250&chl='+escape(location.href);">URL to QR Code</a></li>
<li><a href='javascript:q=""+(window.getSelection ? window.getSelection() : document.getSelection ? document.getSelection() : document.selection.createRange().text); if (!q) q=prompt("Enter content of QR Code","");if (q!=null) location="http://chart.apis.google.com/chart?cht=qr&chs=250x250&chl="+escape(q); void 0'>Selection to QR Code</a></li>
</ul>
More will be added as I find the need for something else. If you know of any handy bookmarklets, let me know.
