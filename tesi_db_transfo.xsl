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
        <div class="diaryEntry">
		  <xsl:for-each select="tei:TEI/tei:text/tei:body/tei:div">
		    <xsl:for-each select="//tei:p[ancestor::tei:div]">
			  <p><xsl:value-of select="."/></p>
	        </xsl:for-each>
		    <xsl:for-each select="//tei:ab[ancestor::tei:div]">
			  <p><xsl:value-of select="."/></p>
   	        </xsl:for-each>
		    <div class="opener">
			  <xsl:for-each select="//tei:salute[parent::tei:opener]">
			    <p><xsl:value-of select="."/></p>
	          </xsl:for-each> 
			  <xsl:for-each select="//tei:dateline[parent::tei:opener]">
			    <p><xsl:value-of select="."/></p>
	          </xsl:for-each>
		      <xsl:for-each select="//tei:signed[parent::tei:opener]">
			    <p><xsl:value-of select="."/></p>
	          </xsl:for-each>
			</div>
		    <div class="closer">
			  <xsl:for-each select="//tei:salute[parent::tei:closer]">
			    <p><xsl:value-of select="."/></p>
	          </xsl:for-each> 
			  <xsl:for-each select="//tei:dateline[parent::tei:closer]">
			    <p><xsl:value-of select="."/></p>
	          </xsl:for-each>
		      <xsl:for-each select="//tei:signed[parent::tei:closer]">
			    <p><xsl:value-of select="."/></p>
	          </xsl:for-each>
			</div>
			<xsl:for-each select="//tei:list[ancestor::tei:div]">
			  <xsl:for-each select=".">
			    <ul>
				  <li><xsl:value-of select="//tei:item[parent::tei:list]"/></li>
				</ul>
			  </xsl:for-each>
	        </xsl:for-each>
			<xsl:for-each select="//tei:list[parent::tei:div]">
			  <xsl:for-each select=".">
			    <ul>
				  <li><xsl:value-of select="//tei:item[parent::tei:list]"/></li>
				</ul>
			  </xsl:for-each>
	        </xsl:for-each>
		  </xsl:for-each>
		</div>
	  </body>
	</html>
  </xsl:template>
</xsl:stylesheet>