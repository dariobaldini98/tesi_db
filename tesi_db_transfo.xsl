<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0">
  <xsl:template match="/">
    <html lang="it">
	  <head>
        <title lang="en">Trascrizione TEI - Riccioni's Legacy</title>
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
		
		<div class="buttons_box">
			<a id="open_meta_sidebar" class="sidebar_opening_button">
				<img alt="Descriptive metadata" src="img/info_icon.png" width="45" height="45"/>
			</a><br/>
			<a id="open_settings_sidebar" class="sidebar_opening_button">
				<img alt="Settings" src="img/settings_icon.png" width="45" height="45"/>
			</a>
		</div>
		
		<div id="meta_sidebar" class="sidebar">
		  <a href="javascript:void(0)" id="close_meta_sidebar" class="sidebar_closing_button">&#8656;</a>
		  <div class="sidebar_item">
		    <p><b>Autore</b>: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem/tei:author/tei:persName"/></p>
		  </div>
		  <xsl:for-each select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc">
			<xsl:for-each select="tei:objectDesc">
			  <div class="sidebar_item">
			    <h4>Caratteristiche del supporto:</h4>
				<xsl:for-each select="tei:supportDesc">
				  <ul>
				    <xsl:apply-templates/>
				  </ul>
				</xsl:for-each>
		      </div>
			  <div class="sidebar_item">
		   		<h4>Impaginazione:</h4>
				<xsl:for-each select="tei:layoutDesc">
				  <ul>
				    <xsl:apply-templates/>
				  </ul>
				</xsl:for-each>
			  </div>
			</xsl:for-each>
			<div class="sidebar_item">
			  <h4>Mani:</h4>
			  <xsl:for-each select="tei:handDesc">
			    <ul>
				  <xsl:apply-templates/>
				</ul>
			  </xsl:for-each>
			</div>
			<div class="sidebar_item">
			  <h4>Stili di scrittura:</h4>
			  <xsl:for-each select="tei:scriptDesc">
			    <ul>
				  <xsl:apply-templates/>
				</ul>
			  </xsl:for-each>
			</div>
			<div class="sidebar_item">
			  <h4>Elementi decorativi:</h4>
			  <xsl:for-each select="tei:decoDesc">
			    <ul>
				  <xsl:apply-templates/>
				</ul>
			  </xsl:for-each>
			</div>
			<div class="sidebar_item">
			  <h4>Aggiunte successive:</h4>
			  <xsl:for-each select="tei:additions">
			    <ul>
				  <xsl:apply-templates/>
				</ul>
			  </xsl:for-each>
			</div>
			<div class="sidebar_item">
			  <h4>Materiale allegato:</h4>
			  <xsl:for-each select="tei:accMat">
			    <ul>
				  <xsl:apply-templates/>
				</ul>
			  </xsl:for-each>
			</div>
		  </xsl:for-each>
	      <div class="sidebar_item">
		    <h4>Storia:</h4>
			<xsl:for-each select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:history">
			  <ul>
			    <xsl:apply-templates/>
			  </ul>
			</xsl:for-each>
		  </div>
	      <div class="sidebar_item">
		    <h4>Informazioni amministrative:</h4>
			<xsl:for-each select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:additional/tei:adminInfo">
			  <ul>
			    <xsl:apply-templates/>
			  </ul>
			</xsl:for-each>
		  </div>
	      <div class="sidebar_item">
		    <h4>Pratiche editoriali:</h4>
			<xsl:for-each select="tei:TEI/tei:teiHeader/tei:encodingDesc/tei:editorialDecl">
			  <ul>
			    <xsl:apply-templates/>
			  </ul>
			</xsl:for-each>
	      </div>
		</div>
	
		<div id="settings_sidebar" class="sidebar">
		  <a href="javascript:void(0)" id="close_settings_sidebar" class="sidebar_closing_button">&#8656;</a>
		  <div class="sidebar_item">
			<input type="checkbox" id="highlight_box"/>
			<label for="highlight_box"> Evidenzia fenomeni testuali</label>
		  </div>
		  <div class="sidebar_item">
			<input type="checkbox" id="activate_tooltip"/>
			<label for="activate_tooltip"> Attiva tooltip</label>
		  </div>
		  <div class="sidebar_item">
			<p>Mostra:</p><br/>
			<input type="radio" id="switch_abbr" name="switch_abbr_expan" value="abbr" checked />
			<label for="switch_abbr"> Forme abbreviate</label><br/>
			<input type="radio" id="switch_expan" name="switch_abbr_expan" value="expan"/>
			<label for="switch_expan"> Forme estese</label><br/>
		  </div>
		</div>
		
		<div class="titles" id="transcr_titles">
	      <h1><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/></h1>
		  <xsl:for-each select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt">
		    <h3><xsl:value-of select="tei:resp"/></h3>
		    <h2><xsl:value-of select="tei:persName"/></h2>
		  </xsl:for-each>
		</div>
		<xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[@type='entry']"/>
		<script src="tesi_db_script.js"></script>
	  </body>
	</html>
  </xsl:template>
  
  <!-- div -->
  
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
  
  <!-- p -->
  
  <xsl:template match="tei:p | tei:ab | tei:salute | tei:dateline | tei:signed">
    <p><xsl:apply-templates/></p>
  </xsl:template>
  
  <!-- solo contenitori -->
  
  <xsl:template match="tei:quote | tei:postscript | tei:add | tei:subst | tei:roleName | tei:choice | tei:damage | tei:figure | tei:measure | tei:availability">
	<xsl:apply-templates/>
  </xsl:template>

  <!-- liste -->
  
  <xsl:template match="tei:list">
	<ul>
	  <xsl:apply-templates/>
	</ul>
  </xsl:template>
  
  <xsl:template match="tei:item | tei:correction | tei:normalization | tei:punctuation | tei:quotation | tei:hyphenation | tei:interpretation">
	<li><xsl:apply-templates/></li>
  </xsl:template>
  
  <xsl:template match="tei:support | tei:extent | tei:collation | tei:foliation | tei:condition | tei:layout | tei:handNote | tei:scriptNote | tei:decoNote | tei:origin | tei:provenance | tei:acquisition | tei:source | tei:custEvent">
    <li><xsl:apply-templates/>.</li>
  </xsl:template>
  
  <!-- vari -->
  
  <xsl:template match="tei:head">
    <h4><xsl:value-of select="."/></h4>
  </xsl:template>
  
  <xsl:template match="tei:del">
	<span class="overstrike"><xsl:value-of select="."/></span>
  </xsl:template>
  
  <xsl:template match="tei:dimensions">di <xsl:apply-templates/></xsl:template>
  
  <xsl:template match="tei:height"><xsl:value-of select="."/><xsl:value-of select="parent::tei:dimensions/@unit"/> x </xsl:template>
  
  <xsl:template match="tei:width"><xsl:value-of select="."/><xsl:value-of select="parent::tei:dimensions/@unit"/></xsl:template>

  <xsl:template match="tei:placeName[@ref]">
    <xsl:choose>
      <xsl:when test="./descendant::tei:choice">
        <span class="tooltip_container_inactive">
		  <a href="{@ref}" target="_blank"><xsl:value-of select="./descendant::tei:abbr"/></a>
		  <span class="tooltip_text">"<xsl:value-of select="./descendant::tei:expan"/>"</span>
	    </span>
      </xsl:when>
      <xsl:otherwise>
        <a href="{@ref}" target="_blank"><xsl:apply-templates/></a>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <!-- rimossi -->
  
  <xsl:template match="tei:expan | tei:corr | tei:figDesc | tei:segmentation"/>

  <!-- Tooltip -->

  <xsl:template match="tei:surplus">
    <span class="tooltip_container_inactive to_highlight">
	    <span class="overstrike"><xsl:value-of select="."/></span>
		<span class="tooltip_text">Originale<br/> probabilmente&#160;superfluo</span>
    </span>
  </xsl:template>
  
  <xsl:template match="tei:secl">
	<span class="tooltip_container_inactive to_highlight">
	  <xsl:value-of select="."/>
	  <span class="tooltip_text">Originale<br/> probabilmente&#160;interpolato</span>
	</span>
  </xsl:template>

  <xsl:template match="tei:unclear">
	<span class="tooltip_container_inactive to_highlight">
	  <xsl:value-of select="."/>
	  <span class="tooltip_text">Originale<br/> poco&#160;comprensibile</span>
	</span>
  </xsl:template>
  
  <xsl:template match="tei:supplied">
	<span class="tooltip_container_inactive to_highlight">
	  <xsl:value-of select="."/>
	  <span class="tooltip_text">Originale<br/> incomprensibile</span>
	</span>
  </xsl:template>
  
  <xsl:template match="tei:measure[@unit='ITL']">
	<span class="tooltip_container_inactive to_highlight">
	  <xsl:apply-templates/>
	  <span class="tooltip_text"><a href="https://www.infodata.ilsole24ore.com/2018/03/14/calcola-il-potere-dacquisto-in-lire-ed-euro-dal-1860-al-2015/" target="_blank"><xsl:value-of select="round((@quantity div 0.218474176) * 100) div 100"/>&#160;EUR</a></span>
	</span>
  </xsl:template>
  
  <!-- Immagini -->
  
  <xsl:template match="tei:graphic">
    <span class="tooltip_container_img">
	  <a href="{@url}" target="_blank">&#128444;</a>
	  <span class="tooltip_text"><xsl:value-of select="following-sibling::tei:figDesc"/></span>
	</span>
  </xsl:template>
  
	<!-- Testo da switchare -->
  
	<xsl:template match="tei:abbr">
		<span class="abbr_text to_highlight">
			<xsl:value-of select="."/>
			<span class="expan_text to_highlight"><xsl:value-of select="preceding-sibling::tei:expan"/></span>
		</span>
	</xsl:template>
	
	<xsl:template match="tei:sic">
		<span class="sic_text to_highlight">
			<xsl:value-of select="."/>
			<span class="corr_text to_highlight"><xsl:value-of select="preceding-sibling::tei:corr"/></span>
		</span>
	</xsl:template>
  
</xsl:stylesheet>

