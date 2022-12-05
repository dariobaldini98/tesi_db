<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0">
  <xsl:template match="/">
    <html>
	  <head>
        <meta charset="utf-8"/>
        <title>WIP - Riccioni's Legacy - WIP</title>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
		<link rel="stylesheet" href="tesi_db_style.css"/>
		<link rel="icon" href="https://iiif.archivelab.org/iiif/tesi_db_20r/474,959,122,137/full/0/default.jpg"/>
      </head>
	  <body>
	    <div class="heading">
	      <h1><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/></h1>
		  <xsl:for-each select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt">
		    <h3><xsl:value-of select="tei:resp"/></h3>
		    <h2><xsl:value-of select="tei:persName"/></h2>
		  </xsl:for-each>
		  <div class="licence" title="Pubblicato su licenza CC BY-NC-ND 4.0">&#127341;&#127343;&#127247;&#8860;</div>
	      <div class="cookie" title="Questo sito non utilizza cookie di terze parti">&#127850;</div>
		</div>
		<div class="body">
		  <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div"/>
		</div>
	  </body>
	</html>
  </xsl:template>
  <xsl:template match="tei:TEI/tei:text/tei:body/tei:div">
    <div class="diaryEntry">
	  <xsl:apply-templates/>
	</div>
  </xsl:template>
  <xsl:template match="tei:p">
    <p><xsl:apply-templates/></p>
  </xsl:template>
  <xsl:template match="tei:ab">
    <p><xsl:apply-templates/></p>
  </xsl:template>
  <xsl:template match="tei:opener">
    <div class="opener">
	  <xsl:apply-templates/>
	</div>
  </xsl:template>
  <xsl:template match="tei:closer">
    <div class="closer">
	  <xsl:apply-templates/>
	</div>
  </xsl:template>
  <xsl:template match="tei:salute">
    <p><xsl:value-of select="."/></p>
  </xsl:template>
  <xsl:template match="tei:dateline">
    <p><xsl:value-of select="."/></p>
  </xsl:template>
  <xsl:template match="tei:signed">
    <p><xsl:value-of select="."/></p>
  </xsl:template>
  <xsl:template match="tei:head">
    <h4><xsl:value-of select="."/></h4>
  </xsl:template>
  <xsl:template match="tei:list">
	<ol>
	  <xsl:apply-templates/>
	</ol>
  </xsl:template>
  <xsl:template match="tei:item">
	<il><xsl:value-of select="."/><br/></il>
  </xsl:template>
  <xsl:template match="tei:del">
	<span class="overstrike"><xsl:value-of select="."/></span>
  </xsl:template>
  <xsl:template match="tei:surplus">
	<span class="overstrike"><xsl:value-of select="."/></span>
  </xsl:template>
  <xsl:template match="tei:choice">
	<span class="abbr"><xsl:value-of select="tei:abbr"/></span>
  </xsl:template>
  <xsl:template match="tei:choice">
	<span class="sic"><xsl:value-of select="tei:sic"/></span>
  </xsl:template>
</xsl:stylesheet>