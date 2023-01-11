<?xml version ="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <HTML>
            <HEAD>
                <TITLE>Passport</TITLE>
                <link rel="stylesheet" type="text/css" href="style.css"/>
            </HEAD>
            <BODY>
                <div style="position:absolute;background:url(passport.jpg) no-repeat; left: 50px; top: 50px; width: 800px; height:650px">
                    <xsl:for-each select="database/passport">
                        <div style="position: relative; left:185px">
                            <div class="serial">
                                <xsl:value-of select="number"/>
                            </div>
                            <img class="foto">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="foto"/>
                                </xsl:attribute>
                            </img>
                            <div class="name">
                                <xsl:value-of select="lastname_ua"/>
                            </div>
                            <div class="note">Прізвище</div>
                            <div class="name">
                                <xsl:value-of select="firstname_ua"/>
                            </div>
                            <div class="note">ім'я</div>
                            <div class="name">
                                <xsl:value-of select="secondname_ua"/>
                            </div>
                            <div class="note">по батькові</div>
                            <div class="field">
                                <nobr>
                                    <xsl:value-of select="birthday_ua"/>
                                </nobr>
                            </div>
                            <div class="note">Дата народження</div>
                            <div class="field">
                                <nobr>
                                    <xsl:value-of select="birthplace_ua"/>
                                </nobr>
                            </div>
                            <div class="note">Місце народження</div>
                            <div class="sign">Підпис власника паспорта</div>
                        </div>
                    </xsl:for-each>
                </div>
                <div style="position:absolute;background:url(passport2page.png) no-repeat; left: 50px; top: 700px; width: 790px; 
height: 650px; background-size: contain;">
                    <xsl:for-each select="database/passport">
                        <div class="serial" style="position: relative; left:185px">
                            <xsl:value-of select="number"/>
                        </div>
                        <div style="position: relative; top:-212px; width:50%">
                            <div class="name">
                                <xsl:value-of select="lastname_ru"/>
                            </div>
                            <div class="note">Прізвище/Фамилия</div>
                            <div class="name">
                                <xsl:value-of select="firstname_ru"/>
                            </div>
                            <div class="note">ім'я/имя</div>
                            <div class="name">
                                <xsl:value-of select="secondname_ru"/>
                            </div>
                            <div class="note">по батькові/отчество</div>
                            <div class="field">
                                <nobr>
                                    <xsl:value-of select="birthday_ru"/>
                                </nobr>
                            </div>
                            <div class="note">Дата народження/Дата рождения</div>
                            <div class="field">
                                <nobr>
                                    <xsl:value-of select="birthplace_ru"/>
                                </nobr>
                            </div>
                            <div class="note">Місце народження/Место рождения</div>
                            <div style="position: relative; height: 60px"></div>
                            <div class="field">
                                <nobr>
                                    <xsl:value-of select="sex"/>
                                </nobr>
                            </div>
                            <div class="note">Стать/Пол</div>
                            <div class="field">
                                <nobr>
                                    <xsl:value-of select="given_ua"/>
                                </nobr>
                            </div>
                            <div class="note">Ким виданий паспорт/Кем выдан паспорт</div>
                            <div class="field">
                                <nobr>
                                    <xsl:value-of select="where_given_ua"/>
                                </nobr>
                            </div>
                            <div class="note"></div>
                            <div class="field">
                                <nobr>
                                    <xsl:value-of select="given_ru"/>
                                </nobr>
                            </div>
                            <div class="note"></div>
                            <div class="field">
                                <nobr>
                                    <xsl:value-of select="where_given_ru"/>
                                </nobr>
                            </div>
                            <div class="field"></div>
                            <div class="note"></div>
                            <div class="note">Підпис посадової особи/Подпись должностного лица</div>
                        </div>
                    </xsl:for-each>
                </div>
            </BODY>
        </HTML>
    </xsl:template>
</xsl:stylesheet>
