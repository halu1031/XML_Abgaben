<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="https://h-ka.de" version="1.0">
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Kochbuch</title>
            </head>
            <body>
                <h1>Kochbuch</h1>
                <xsl:for-each select="//rezept">
                    <xsl:sort select="name" order="ascending"/>
                    <div style="margin-bottom: 20px;">
                        <h2><xsl:value-of select="name"/></h2>
                        <p><strong>Beschreibung:</strong> <xsl:value-of select="beschreibung"/></p>
                        <p><strong>Portionen:</strong> <xsl:value-of select="portionen"/></p>
                        <p><strong>Arbeitszeit:</strong> <xsl:value-of select="arbeitszeit"/></p>
                        <p><strong>Gesamtkochzeit:</strong> <xsl:value-of select="gesamtkochzeit"/></p>
                        <p><strong>Schwierigkeitsgrad:</strong> <xsl:value-of select="schwierigkeitsgrad"/></p>
                        <h3>Zutaten</h3>
                        <ul>
                            <xsl:for-each select="zutaten/zutat">
                                <li><xsl:value-of select="menge"/> <xsl:value-of select="einheit"/> <xsl:value-of select="name"/></li>
                            </xsl:for-each>
                        </ul>
                        <h3>Zubereitung</h3>
                        <ol>
                            <xsl:for-each select="zubereitung/schritt">
                                <li><xsl:value-of select="."/></li>
                            </xsl:for-each>
                        </ol>
                        <p><strong>Abschlusshinweise:</strong> <xsl:value-of select="abschlusshinweise"/></p>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
