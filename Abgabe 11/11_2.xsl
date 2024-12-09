<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    
    <xsl:template match="/">
        <Contacts>
            <xsl:for-each select="Adressbuch/Kontakt">
                <Contact>
                    <FirstName>
                        <xsl:value-of select="Vorname"/>
                    </FirstName>
                    <LastName>
                        <xsl:value-of select="Nachname"/>
                    </LastName>
                    <Street>
                        <xsl:value-of select="Strasse"/>
                    </Street>
                    <HouseNumber>
                        <xsl:value-of select="Hausnummer"/>
                    </HouseNumber>
                    <PostalCode>
                        <xsl:value-of select="PLZ"/>
                    </PostalCode>
                    <City>
                        <xsl:value-of select="Ort"/>
                    </City>
                    <PhoneNumber>
                        <xsl:value-of select="Telefonnummer"/>
                    </PhoneNumber>
                    <Email>
                        <xsl:value-of select="Email"/>
                    </Email>
                    <xsl:if test="Kommentar">
                        <Comment>
                            <xsl:value-of select="Kommentar"/>
                        </Comment>
                    </xsl:if>
                </Contact>
            </xsl:for-each>
        </Contacts>
    </xsl:template>
</xsl:stylesheet>
