<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0">
  <xsl:template match="/">
    <html lang="it">
	  <head>
        <title>Riccioni's Legacy</title>
        <link rel="stylesheet" href="tesi_db_style.css"/>
        <link rel="icon" href="https://iiif.archivelab.org/iiif/tesi_db_20r/474,959,122,137/full/0/default.jpg"/>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
	    <meta name="author" content="Dario Baldini"/>
	    <meta name="keywords" content="Digital Humanities, Electronic Publishing, Semantic Web, Linked Data, HTML, CSS, XML, XHTML, XSL, XSLT, XPath, JSON, JSON-LD, International Image Interoperability Framework, IIIF, Text Encoding Initiative, TEI"/>
	    <meta name="description" content="Digitalizzazione di un diario manoscritto di inizio Novecento"/>
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
		        <a href="https://creativecommons.org/licenses/by-nc-nd/4.0/legalcode" target="_blank">CC BY-NC-ND 4.0</a>
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
  
  <xsl:template match="tei:quote">
	<xsl:apply-templates/>
  </xsl:template>
  
  <xsl:template match="tei:postscript">
	<xsl:apply-templates/>
  </xsl:template>
  
  <xsl:template match="tei:salute">
    <p><xsl:apply-templates/></p>
  </xsl:template>
  
  <xsl:template match="tei:dateline">
    <p><xsl:apply-templates/></p>
  </xsl:template>
  
  <xsl:template match="tei:signed">
    <p><xsl:apply-templates/></p>
  </xsl:template>
  
  <xsl:template match="tei:head">
    <h4><xsl:value-of select="."/></h4>
  </xsl:template>
  
  <xsl:template match="tei:list">
	<ol>
	  <xsl:apply-templates/>
	</ol>
  </xsl:template>
  
  <xsl:template match="tei:add">
	<xsl:apply-templates/>
  </xsl:template>
  
  <xsl:template match="tei:subst">
	<xsl:apply-templates/>
  </xsl:template>
  
  <xsl:template match="tei:roleName">
	<xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="tei:choice">
	<xsl:apply-templates/>
  </xsl:template>
  
  <xsl:template match="tei:damage">
	<xsl:apply-templates/>
  </xsl:template>
  
  <xsl:template match="tei:figure">
	<xsl:apply-templates/>
  </xsl:template>
  
  <xsl:template match="tei:expan"/>
  
  <xsl:template match="tei:corr"/>
  
  <xsl:template match="tei:figDesc"/>

  <xsl:template match="tei:item">
	<il><xsl:value-of select="."/></il><br/>
  </xsl:template>

  <xsl:template match="tei:del">
	<span class="overstrike"><xsl:value-of select="."/></span>
  </xsl:template>

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

  <xsl:template match="tei:surplus">
    <span class="tooltip_container overstrike">
	    <xsl:value-of select="."/>
	    <span class="tooltip_text">Originale probabilmente superfluo</span>
    </span>
  </xsl:template>
  
  <xsl:template match="tei:secl">
	<span class="tooltip_container">
	  <xsl:value-of select="."/>
	  <span class="tooltip_text">Originale probabilmente interpolato</span>
	</span>
  </xsl:template>

  <xsl:template match="tei:unclear">
	<span class="tooltip_container">
	  <xsl:value-of select="."/>
	  <span class="tooltip_text">Originale poco comprensibile</span>
	</span>
  </xsl:template>
  
  <xsl:template match="tei:supplied">
	<span class="tooltip_container">
	  <xsl:value-of select="."/>
	  <span class="tooltip_text">Originale illeggibile</span>
	</span>
  </xsl:template>
  
  <xsl:template match="tei:graphic">
    <span class="tooltip_container_img">
      <img src="{@url}" alt="{following-sibling::tei:figDesc}" width="{@width}" height="{@height}"/>
	  <span class="tooltip_text">
	    <xsl:value-of select="following-sibling::tei:figDesc"/>
	  </span>
	</span>
  </xsl:template>
  
</xsl:stylesheet>
	