<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="UTF-8"/>
    
    <xsl:template match="/">
        Titel,Interpret,Album,Erscheinungsjahr
        <xsl:text>&#10;</xsl:text>
        
        <xsl:for-each select="SongRepository/Song">
            <xsl:value-of select="Titel"/>
            <xsl:text>,</xsl:text>
            <xsl:value-of select="Interpret"/>
            <xsl:text>,</xsl:text>
            <xsl:value-of select="Album"/>
            <xsl:text>,</xsl:text>
            <xsl:value-of select="Erscheinungsjahr"/>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
