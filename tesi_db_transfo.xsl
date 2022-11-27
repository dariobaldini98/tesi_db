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
		<div class="body"><xsl:value-of select="tei:TEI/tei:text/tei:body"/></div>
	  </body>
	</html>
  </xsl:template>
  <xsl:template match="tei:TEI/tei:text/tei:body">
    <p><xsl:apply-templates select="//tei:p[ancestor::tei:div]"/></p>
  </xsl:template>
  <xsl:template match="tei:TEI/tei:text/tei:body">
    <p><xsl:apply-templates select="//tei:ab[ancestor::tei:div]"/></p>
  </xsl:template>
  <xsl:template match="tei:TEI/tei:text/tei:body">
    <div class="opener">
	  <xsl:for-each select="//tei:opener[ancestor::tei:div]">
	    <p><xsl:apply-templates select="//tei:salute[parent::tei:opener]"/></p>
	  </xsl:for-each> 
	  <xsl:for-each select="//tei:opener[ancestor::tei:div]">
	    <p><xsl:apply-templates select="//tei:dateline[parent::tei:opener]"/></p>
	  </xsl:for-each>
	  <xsl:for-each select="//tei:opener[ancestor::tei:div]">
	    <p><xsl:apply-templates select="//tei:signed[parent::tei:opener]"/></p>
	  </xsl:for-each>
	</div>
  </xsl:template>
  <xsl:template match="tei:TEI/tei:text/tei:body">
    <div class="closer">
	  <xsl:for-each select="//tei:closer[ancestor::tei:div]">
	    <p><xsl:apply-templates select="//tei:salute[parent::tei:closer]"/></p>
	  </xsl:for-each> 
	  <xsl:for-each select="//tei:closer[ancestor::tei:div]">
	    <p><xsl:apply-templates select="//tei:dateline[parent::tei:closer]"/></p>
	  </xsl:for-each>
	  <xsl:for-each select="//tei:closer[ancestor::tei:div]">
	    <p><xsl:apply-templates select="//tei:signed[parent::tei:closer]"/></p>
	  </xsl:for-each>
	</div>
  </xsl:template>
</xsl:stylesheet>