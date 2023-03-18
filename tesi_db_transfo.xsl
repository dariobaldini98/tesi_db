<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0">
  <xsl:template match="/">
    <html lang="it">
	  <head>
        <title lang="en">Riccioni's Legacy</title>
        <link rel="icon" href="https://iiif.archivelab.org/iiif/tesi_db_20r/474,959,122,137/full/0/default.jpg"/>
        <link rel="stylesheet" href="tesi_db_style.css"/>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
	    <meta name="author" content="Dario Baldini"/>
	    <meta name="keywords" content="Digital Humanities, Electronic Publishing, Semantic Web, Linked Data, HTML, CSS, XML, XHTML, XSL, XSLT, XPath, JSON, JSON-LD, International Image Interoperability Framework, IIIF, Text Encoding Initiative, TEI"/>
	    <meta name="description" content="Digitalizzazione di un diario manoscritto di inizio Novecento"/>
      </head>
	  <body>
	    <div class="licence">
	      <a rel="license" href="https://creativecommons.org/licenses/by-nc-nd/4.0/deed.it">
	        <img alt="Creative Commons License" src="https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png" />
	      </a>
	    </div>
		<a class="sidebar_button" onclick="toggle_sidebar()">
		  <img alt="Descriptive metadata" src="img/info_icon.png" width="45" height="45"/>
		</a>
		<div id="meta_sidebar" class="sidebar">
		  <div class="meta_container">
		    <h4>WIP - WIP - WIP</h4>
		    <p>Autore: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem/tei:author/tei:persName"/></p>
			<h4>Manoscritto</h4>
			<xsl:for-each select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc">
			  <xsl:for-each select="tei:objectDesc">
			    <xsl:for-each select="tei:supportDesc">
			      <p>Supporto: <xsl:value-of select="tei:support"/></p>
			      <p>Lunghezza: <xsl:value-of select="tei:extent"/></p>
			      <p>Disposizione dei fogli: <xsl:value-of select="tei:collation"/></p>
			      <p>Numerazione delle pagine: <xsl:value-of select="tei:foliation"/></p>
			      <p>Condizioni: <xsl:value-of select="tei:condition"/></p>
			    </xsl:for-each>
			  </xsl:for-each>
			</xsl:for-each>
		  </div>
		</div>
		<div id="content">
		  <div class="titles">
	        <h1><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/></h1>
		    <xsl:for-each select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt">
		      <h3><xsl:value-of select="tei:resp"/></h3>
		      <h2><xsl:value-of select="tei:persName"/></h2>
		    </xsl:for-each>
		  </div>
		  <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[@type='entry']"/>
		</div>
		<script src="tesi_db_script.js"></script>
	  </body>
	</html>
  </xsl:template>
  
  <!-- Contenitori con formattazione -->
  
  <xsl:template match="tei:TEI/tei:text/tei:body/tei:div[@type='entry']">
    <div class="entry">
	  <xsl:apply-templates/>
	</div>
  </xsl:template>
  
  <xsl:template match="tei:div[@type='letter']">
    <div class="letter">
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
    <p><xsl:apply-templates/></p>
  </xsl:template>
  
  <xsl:template match="tei:dateline">
    <p><xsl:apply-templates/></p>
  </xsl:template>
  
  <xsl:template match="tei:signed">
    <p><xsl:apply-templates/></p>
  </xsl:template>
  
  <xsl:template match="tei:list">
	<ol>
	  <xsl:apply-templates/>
	</ol>
  </xsl:template>
    
  <xsl:template match="tei:placeName[@ref]">
    <xsl:choose>
      <xsl:when test="./descendant::tei:choice">
        <span class="tooltip_container">
		  <a href="{@ref}" target="_blank"><xsl:value-of select="./descendant::tei:abbr"/></a>
		  <span class="tooltip_text">"<xsl:value-of select="./descendant::tei:expan"/>"</span>
	    </span>
      </xsl:when>
      <xsl:otherwise>
        <a href="{@ref}" target="_blank"><xsl:apply-templates/></a>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <!-- Contenitori senza formattazione -->
  
  <xsl:template match="tei:quote">
	<xsl:apply-templates/>
  </xsl:template>
  
  <xsl:template match="tei:postscript">
	<xsl:apply-templates/>
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
    
  <!-- Elementi rimossi -->
  
  <xsl:template match="tei:expan"/>
  
  <xsl:template match="tei:corr"/>
  
  <xsl:template match="tei:figDesc"/>
  
  <!-- Solo valori -->
  
  <xsl:template match="tei:head">
    <h4><xsl:value-of select="."/></h4>
  </xsl:template>
  
  <xsl:template match="tei:item">
	<il><xsl:value-of select="."/></il><br/>
  </xsl:template>

  <xsl:template match="tei:del">
	<span class="overstrike"><xsl:value-of select="."/></span>
  </xsl:template>

  <!-- Tooltip -->

  <xsl:template match="tei:abbr">
	<span class="tooltip_container">
	  <xsl:value-of select="."/>
	  <span class="tooltip_text">"<xsl:value-of select="preceding-sibling::tei:expan"/>"</span>
	</span>
  </xsl:template>
  
  <xsl:template match="tei:sic">
	<span class="tooltip_container">
	  <xsl:value-of select="."/>
	  <span class="tooltip_text">*<xsl:value-of select="preceding-sibling::tei:corr"/></span>
	</span>
  </xsl:template>

  <xsl:template match="tei:surplus">
    <span class="tooltip_container">
	    <span class="overstrike"><xsl:value-of select="."/></span>
		<span class="tooltip_text">Originale<br/> probabilmente&#160;superfluo</span>
    </span>
  </xsl:template>
  
  <xsl:template match="tei:secl">
	<span class="tooltip_container">
	  <xsl:value-of select="."/>
	  <span class="tooltip_text">Originale<br/> probabilmente&#160;interpolato</span>
	</span>
  </xsl:template>

  <xsl:template match="tei:unclear">
	<span class="tooltip_container">
	  <xsl:value-of select="."/>
	  <span class="tooltip_text">Originale<br/> poco&#160;comprensibile</span>
	</span>
  </xsl:template>
  
  <xsl:template match="tei:supplied">
	<span class="tooltip_container">
	  <xsl:value-of select="."/>
	  <span class="tooltip_text">Originale<br/> incomprensibile</span>
	</span>
  </xsl:template>
  
  <xsl:template match="tei:measure[@unit='ITL']">
	<span class="tooltip_container">
	  <xsl:apply-templates/>
	  <span class="tooltip_text"><a href="https://www.infodata.ilsole24ore.com/2018/03/14/calcola-il-potere-dacquisto-in-lire-ed-euro-dal-1860-al-2015/" target="_blank"><xsl:value-of select="round((@quantity div 0.218474176) * 100) div 100"/>&#160;EUR</a></span>
	</span>
  </xsl:template>
  
  <!-- Immagini -->
  
  <xsl:template match="tei:graphic">
    <span class="tooltip_container_img">
      <img src="{@url}" alt="{following-sibling::tei:figDesc}" width="{@width}" height="{@height}"/>
	  <span class="tooltip_text"><xsl:value-of select="following-sibling::tei:figDesc"/></span>
	</span>
  </xsl:template>
  
</xsl:stylesheet>