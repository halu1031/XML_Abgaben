<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html> 
            <body>
                <h2>Rezepte</h2>
                <table border="1">
                    <tr bgcolor="#6E76EF">
                        <th style="text-align:left">Name</th>
                    </tr>
                    <xsl:for-each select="kochbuch/rezept">
                        <xsl:sort select="name"/>
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

