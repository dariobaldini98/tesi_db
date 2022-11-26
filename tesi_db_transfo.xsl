<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0">
  <xsl:template match="/">
    <html>
	  <head>
        <meta charset="utf-8"/>
        <title>WIP - Riccioni's Legacy - WIP</title>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
		<link rel="stylesheet" href="tesi_db_style.css"/>
      </head>
	  <body>
	    <h1><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/></h1>
		<xsl:for-each select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt">
		<h3><xsl:value-of select="tei:resp"/></h3>
		<h2><xsl:value-of select="tei:persName"/></h2>
		</xsl:for-each>
        <xsl:for-each select="tei:TEI/tei:text/tei:body/tei:div">
		  <div class="diaryEntry">
		    <xsl:template match="tei:div">
              <p>
                <xsl:apply-templates select="//tei:p[ancestor::tei:div]"/>
				<xsl:apply-templates select="//tei:ab[ancestor::tei:div]"/>
              </p>
            </xsl:template>
	      </div>
		</xsl:for-each>
	  </body>
	</html>
  </xsl:template>
</xsl:stylesheet>