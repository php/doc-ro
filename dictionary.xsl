<?xml version="1.0" encoding="utf-8"?>
<!-- $Revision$ -->
<!-- $Author$ -->
<!-- DWXMLSource="dictionary.xml" -->
<!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<title><xsl:for-each select="dictionary"><xsl:value-of select="@title" /></xsl:for-each></title>
                <style type="text/css">
                	h1 {
				font-size: x-large;
			}
			dt {
				font-weight: bolder;
			}
			dd {
				font-style: italic;
				font-size: larger;
				padding-bottom: 16px;
			}
                </style>
	</head>
	<body>
	<xsl:for-each select="dictionary">
		<h1><xsl:value-of select="@title" /></h1>
		<dl>
			<xsl:for-each select="term"><xsl:sort select="english" />
				<dt><xsl:value-of select="english" />&nbsp;&mdash;&nbsp;<xsl:value-of select="romanian" /></dt>
				<dd><xsl:value-of select="english_example" /><br />
				<xsl:value-of select="romanian_example" /></dd>
                	</xsl:for-each>
               	</dl>
	</xsl:for-each>
		<hr width="100%" />
	</body>
</html>
</xsl:template>
</xsl:stylesheet>
