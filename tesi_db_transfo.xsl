<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
	  <head>
        <meta charset="utf-8"/>
        <title>WIP - tesi_db_text - WIP</title>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
      </head>
	  <body>
	      <xsl:for-each select="TEI/text/body">
	        <div><xsl:value-of select="div"/></div>
	      </xsl:for-each>
	  </body>
	</html>
  </xsl:template>
</xsl:stylesheet>