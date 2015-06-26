---
layout: post
published: true
title: "How can I import iou-web labs into UNetLab?"
excerpt:
  "HowTo import iou-web labs into UNetLab software."
section: "FAQ"
authors:
- andrea
tags:
- UNetLab
- FAQ
---
Currenlty a script is available only from [GIT](https://github.com/dainok/unetlab/blob/master/scripts/import_iou-web.php "GIT").
Download it and upload to the UNetLab server; upload the database.sdb file from iou-web VM too.
Then

~~~
/opt/unetlab/scripts/import_iou-web.php /tmp/database.sdb
~~~

All labs will be imported under `/opt/unetlab/labs/Imported`.
This script is not stable, but it should work fine for most labs. It will be included on latest official releases.
