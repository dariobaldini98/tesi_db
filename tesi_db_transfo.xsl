<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
	  <head>
        <meta charset="utf-8"/>
        <title>WIP - tesi_db_text - WIP</title>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
		<link rel="stylesheet" href="tesi_db_style.css"/>
      </head>
	  <body>
	    <xsl:apply-templates/>
	  </body>
	</html>
  </xsl:template>
  <xsl:template match="/TEI/teiHeader/fileDesc/titleStmt">
    <h1><xsl:apply-templates select="title"/></h1>
  </xsl:template>
</xsl:stylesheet>