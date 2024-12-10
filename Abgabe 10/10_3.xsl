<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <tr bgcolor="#6E76EF">
                        <th style="text-align:left">Name</th>
                        <th style="text-align:left">Menge</th>
                        <th style="text-align:left">Einheit</th>
                    </tr>
                    <xsl:for-each select="kochbuch/rezept/zutaten/zutat">
                        <xsl:sort select="name" order="ascending" />
                        <tr>
                            <td>
                                <xsl:value-of select="name" />
                            </td>
                            <td>
                                <xsl:value-of select="menge" />
                            </td>
                            <td>
                                <xsl:value-of select="einheit" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>