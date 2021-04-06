<?xml version="1.0" encoding="utf-8"?>
<!--
	This file is part of the DITA-OT CSS Tabs Plug-in project.
	See the accompanying LICENSE file for applicable licenses.
-->
<xsl:stylesheet version="2.0" xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="*[contains(@class,' topic/bodydiv ') and contains(@outputclass, 'tabs')]">
		<div class="tabs">
			<xsl:call-template name="commonattributes"/>
		    <xsl:call-template name="setid"/>
		    <xsl:apply-templates mode="tabs"/>
		</div>
    </xsl:template>


    <xsl:template match="*[contains(@class, ' topic/section ')]" name="topic.section" mode="tabs">

    <xsl:variable name="index">
    	 <xsl:value-of select="count(preceding-sibling::*[contains(@class, ' topic/section ')])"/>
     </xsl:variable>
     <xsl:variable name="id">
       <xsl:value-of select="concat('tab_' ,dita-ot:generate-html-id(.))"/>
     </xsl:variable>
   

    <div class="tab"> 
      <input type='radio'>
        <xsl:attribute name="name" select="concat('tabgroup_' ,dita-ot:generate-html-id(..))"/>
      	<xsl:attribute name="id" select="$id"/>
      	<xsl:if test="$index=0">
      		<xsl:attribute name="checked" select="checked"/>
      	</xsl:if>
      </input>
      <label>
      	<xsl:attribute name="for" select="$id"/>
    		<xsl:value-of select="*[contains(@class, ' topic/title ')]"/>
    	</label>
      <div>
        <xsl:call-template name="commonattributes"/>
        <xsl:call-template name="gen-toc-id"/>
        <xsl:call-template name="setidaname"/>
        <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-startprop ')]" mode="out-of-line"/>
        <xsl:apply-templates select="*[not(contains(@class, ' topic/title '))] | text() | comment() | processing-instruction()"/>
        <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-endprop ')]" mode="out-of-line"/>
      </div>
    </div>
  </xsl:template>



</xsl:stylesheet>
