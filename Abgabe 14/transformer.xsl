<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="UTF-8" indent="yes" />
    <xsl:template match="/"> [ <xsl:for-each select="kochbuch/rezept"> { "name": "<xsl:value-of
                select="name" />", "beschreibung": "<xsl:value-of select="beschreibung" />", "bild":
        "<xsl:value-of select="bild" />", "portionen": "<xsl:value-of select="portionen" />",
        "arbeitszeit": "<xsl:value-of select="arbeitszeit" />", "gesamtkochzeit": "<xsl:value-of
                select="gesamtkochzeit" />", "schwierigkeitsgrad": "<xsl:value-of
                select="schwierigkeitsgrad" />", "zutaten": [ <xsl:for-each select="zutaten/zutat">
        { "menge": "<xsl:value-of select="menge" />", "einheit": "<xsl:value-of select="einheit" />",
        "name": "<xsl:value-of select="name" />" }<xsl:if test="position()!=last()">,</xsl:if>
            </xsl:for-each>
        ], "zubereitung": [ <xsl:for-each select="zubereitung/schritt"> "<xsl:value-of
                    select="normalize-space(.)" />" <xsl:if test="position()!=last()">,</xsl:if>
            </xsl:for-each>
        ], "abschlusshinweise": "<xsl:value-of select="abschlusshinweise" />" }<xsl:if
                test="position()!=last()">,</xsl:if>
        </xsl:for-each> ] </xsl:template>
</xsl:stylesheet>