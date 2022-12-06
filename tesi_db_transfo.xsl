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
	 	  <div class="licence">
	        <span class="tooltip_container">&#127341;&#127343;&#127247;&#8860;
	          <span class="tooltip_text_licence">Pubblicato su licenza<br/> 
		        <a href="https://creativecommons.org/licenses/by-nc-nd/4.0/legalcode">CC BY-NC-ND 4.0</a>
		      </span>
            </span>
	      </div>
	      <div class="cookie">
	        <span class="tooltip_container">&#127850;
	          <span class="tooltip_text_cookie">Questo sito non utilizza<br/> cookie di terze parti</span>
	        </span>
	      </div>
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
  <xsl:template match="tei:roleName">
	<xsl:apply-templates/>
  </xsl:template>
  <xsl:template match="tei:salute">
	<xsl:apply-templates/>
  </xsl:template>
  <xsl:template match="tei:choice">
	<xsl:apply-templates/>
  </xsl:template>
  <xsl:template match="tei:expan"/>
  <xsl:template match="tei:corr"/>
  <xsl:template match="tei:abbr">
	<span class="tooltip_container">
	  <xsl:value-of select="."/>
	  <span class="tooltip_text">
	    "<xsl:value-of select="preceding-sibling::tei:expan"/>"
	  </span>
	</span>
  </xsl:template>
  <xsl:template match="tei:sic">
	<span class="tooltip_container">
	  <xsl:value-of select="."/>
	  <span class="tooltip_text">
	    *<xsl:value-of select="preceding-sibling::tei:corr"/>
	  </span>
	</span>
  </xsl:template>
  <xsl:template match="tei:damage">
	<xsl:apply-templates/>
  </xsl:template>
  <xsl:template match="tei:unclear">
	<span class="tooltip_container">
	  <xsl:value-of select="."/>
	  <span class="tooltip_text">
	    Interpretazione:<br/>
		<xsl:for-each select=".">
          <xsl:choose>
		    <xsl:when test="@xml:id=#DB">
		      <xsl:value-of select="tei:respStmt[@tei:resp=DB]//tei:persName"/>
		    </xsl:when>
		    <xsl:otherwise>
			  <xsl:value-of select="tei:respStmt[@tei:resp=FV]//tei:persName"/>
		    </xsl:otherwise>
		  </xsl:choose>
        </xsl:for-each>
	  </span>
	</span>
  </xsl:template>
  <xsl:template match="tei:supplied">
	<span class="tooltip_container">
	  <xsl:value-of select="."/>
	  <span class="tooltip_text">
	    Interpretazione:<br/>
		<xsl:for-each select=".">
          <xsl:choose>
		    <xsl:when test="@xml:id=#DB">
		      <xsl:value-of select="tei:respStmt[@tei:resp=DB]//tei:persName"/>
		    </xsl:when>
		    <xsl:otherwise>
			  <xsl:value-of select="tei:respStmt[@tei:resp=FV]//tei:persName"/>
		    </xsl:otherwise>
		  </xsl:choose>
        </xsl:for-each>
	  </span>
	</span>
  </xsl:template>
</xsl:stylesheet>