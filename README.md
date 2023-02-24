# SchoolXML
An example repository showing the XSL transformation of a clarion dictionary.

[Based on the work by SeanH in a post on clarion hub.](https://clarionhub.com/t/print-out-dictionary-file/5990)

This transformation uses [Bootstrap](https://getbootstrap.com/) V5

You will need to export the dct you want to use as text to a .dctx file.
Rename the file to .xml ie myDct.xml

You then need to edit the xml file and add the line

```xml
<?xml-stylesheet type="text/xsl" href="dctx.xsl"?>
```

Although Sean has mentioned open the XML file from disk in the browser, I haven't found this to work, so I tested by adding the two files to the WEB folder of a NetTalk WebServer and opening the file from that.

A screen shot of everything in action
![alt text](https://clarionhub.com/uploads/default/original/2X/a/a39817ba0b190918f77dd2d2de46d5cbd3300de1.png "An Example")
