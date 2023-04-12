<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" xmlns:tei="http://www.tei-c.org/ns/1.0" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <!--Foglio di stile xsl. Codifica di cartoline storiche: progetto per l'esame del corso di 
    Codifica di testi dell'Università di Pisa AA 2021/2022
    A cura di: Michaela Tognoni Mat. 607051 (m.tognoni3@studenti.unipi.it)-->

    <!--TEMPLATES-->
    <xsl:template match="/"> 
        <html lang="it">
            <head>
                <meta charset="UTF-8" />
                <link rel="stylesheet" type="text/css" href="stile.css"/>
                <script src="script.js"></script>
                <title>
                    <xsl:value-of select="//tei:title[@xml:id='titolo']"/>
                </title>
            </head>

            <body>
                <h1><xsl:value-of select="//tei:title[@xml:id='titolo']"/></h1>
                <h2>Contenuti</h2>
                    <nav class="navbar">
                        <a href="#div118">Donna in città</a>
                        <a href="#div125">La casa della fioraia</a>
                        <a href="#info">About</a>
                    </nav>
                
                <!--Cartolina 108--> 
                <div id="div118">
                    <h3>Donna in città</h3>
                    <h4>Cartolina 118</h4>
                    <xsl:element name="br" />
                    <!--Fronte-->
                    <p>Fronte cartolina 118</p>
                    <button type="submit" class="imgF118" id="imgF118" onclick="wrapF118()">Nascondi / Mostra immagine</button>
                    <div id="front118">
                        <xsl:element name="img">
                            <xsl:attribute name="id">front118</xsl:attribute>
                                <xsl:attribute name="src">
                                <xsl:value-of select="//tei:graphic[@xml:id='front118']/@url"/>
                            </xsl:attribute>
                        </xsl:element>
                        <div id="desc118">
                            <h4>Descrizione</h4>
                                <p><xsl:value-of select="//tei:div/tei:figure/tei:figDesc[@xml:id='d118']"/></p>
                        </div>
                    </div>
                    <!--Retro-->
                    <p>Retro cartolina 118</p>
                    <button type="submit" class="imgR118" id="imgR118" onclick="wrapR118()">Nascondi / Mostra immagine</button>
                    <div id="back118">
                        <xsl:element name="img">
                            <xsl:attribute name="id">back118</xsl:attribute>
                                <xsl:attribute name="src">
                                <xsl:value-of select="//tei:facsimile//tei:surface[@xml:id='cart118r']//tei:graphic/@url"/>
                            </xsl:attribute>
                        </xsl:element>
                    </div>
                    <!--Informazioni principali-->
                    <div id="info118">
                    <p id="dati118">Dati principali</p>
                        <table id="tab1">
                            <tr>
                                <th>Mittente</th>
                                <xsl:element name="br" />
                                <th>Destinatario</th>
                                <xsl:element name="br" />
                                <th>Artista cartolina</th>
                            </tr>
                            <tr>
                                <td><xsl:value-of select="//tei:sourceDesc//tei:listPerson//tei:person[@xml:id='GC']//tei:persName"/></td>
  
                                <td><xsl:value-of select="//tei:sourceDesc//tei:listPerson//tei:person[@xml:id='OT']//tei:persName"/></td>

                                <td><xsl:value-of select="//tei:sourceDesc//tei:listPerson//tei:person[@xml:id='AM']//tei:persName"/></td>
                            </tr>
                        </table>
                        </div>

                        <!--Note sulla cartolina-->
                        <div id="note118">
                            <ul>
                                <h4>Note sulla cartolina 118</h4>
                                    <li><xsl:value-of select="//tei:fileDesc//tei:notesStmt[@xml:id='notes118']//tei:note"/></li>
                                    <xsl:element name="br" />
                                    <li><xsl:value-of select="//tei:fileDesc//tei:notesStmt[@xml:id='notes118']//tei:note[2]"/></li>
                                    <xsl:element name="br" />
                                    <li><xsl:value-of select="//tei:fileDesc//tei:notesStmt[@xml:id='notes118']//tei:note[3]"/></li>
                                    <xsl:element name="br" />
                                    <li><xsl:value-of select="//tei:fileDesc//tei:notesStmt[@xml:id='notes118']//tei:note[4]"/></li>
                                    <xsl:element name="br" />
                                    <li><xsl:value-of select="//tei:fileDesc//tei:notesStmt[@xml:id='notes118']//tei:note[5]"/></li>
                                    <xsl:element name="br" />
                        </ul>
                        </div>
                
                        <!--Pulsante per mostrare altre informazioni sulla cartolina-->
                        <p>Fare click o doppio click per mostrare le altre informazioni sulla cartolina</p>
                        <button type="submit" class="altreinfo118" id="show118" onclick="show118()">Ulteriori informazioni</button>
                            <div id="otherinfo118">
                                <ul>
                                    <h4>Altre informazioni sulla cartolina 118</h4>
                                        <li>Luogo di conservazione: <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:msDesc//tei:msIdentifier//tei:repository"/>, Città: <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:msDesc//tei:msIdentifier//tei:settlement//tei:placeName"/>,
                                        Paese: <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:msDesc//tei:msIdentifier//tei:country"/></li>
                                        <xsl:element name="br" />
                                        <li>Codice identificativo: <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:msDesc//tei:msIdentifier//tei:idno[@xml:id='idno118']" /></li>
                                        <xsl:element name="br" />
                                        <li>Materiale: <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:physDesc//tei:material"/></li>
                                        <xsl:element name="br" />
                                        <li>Dimensioni: altezza: <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:physDesc//tei:dimensions//tei:height" />, larghezza: <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:physDesc//tei:dimensions//tei:width"/> cm</li>
                                        <xsl:element name="br" />
                                        <li>Stato di conservazione: <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:physDesc//tei:condition"/></li>
                                        <xsl:element name="br" />
                                        <li>Disponibilità: <xsl:value-of select="//tei:fileDesc//tei:publicationStmt//tei:availability"/></li>
                                        <xsl:element name="br" />
                                        <li>Lingua: <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:msContents//tei:textLang"/></li>
                                </ul>
                            </div>
                </div>

                <!--Cartolina 125-->
                <div id="div125">
                    <h3>La casa della fioraia</h3>
                    <h4>Cartolina 125</h4>
                    <xsl:element name="br" />
                    <button type="submit" class="imgF125" id="imgF125" onclick="wrapF125()">Nascondi / Mostra immagine</button>
                    <div id="front125">
                        <!--Fronte-->
                        <p>Fronte cartolina 125</p>
                        <xsl:element name="img">
                            <xsl:attribute name="id">front125</xsl:attribute>
                                <xsl:attribute name="src">
                                <xsl:value-of select="//tei:graphic[@xml:id='front125']/@url"/>
                            </xsl:attribute>
                        </xsl:element>

                        <div id="desc125">
                            <h4>Descrizione</h4>
                            <p><xsl:value-of select="//tei:div/tei:figure/tei:figDesc[@xml:id='d125']"/></p>
                        </div>
                    </div>
                    <!--Retro-->
                    <p>Retro cartolina 125</p>
                    <button type="submit" class="imgR125" id="imgR125" onclick="wrapR125()">Nascondi / Mostra immagine</button>
                    <div id="back125">
                        <xsl:element name="img">
                            <xsl:attribute name="id">back125</xsl:attribute>
                                <xsl:attribute name="src">
                                <xsl:value-of select="//tei:facsimile//tei:surface[@xml:id='cart125r']//tei:graphic/@url" />
                            </xsl:attribute>
                        </xsl:element>
                    </div>
                    <!--Informazioni principali-->
                    <div id="info125">
                        <table id="tab2">
                            <tr>
                                <th>Mittente</th>
                                <th>Destinatario</th>
                                <th>Data</th> 
                                <th>Artista cartolina</th>
                            </tr>
                            <tr>
                                <td><xsl:value-of select="//tei:sourceDesc//tei:listPerson//tei:person[@xml:id='GC']//tei:persName"/></td>
                                <td><xsl:value-of select="//tei:sourceDesc//tei:listPerson//tei:person[@xml:id='OT']//tei:persName"/></td>
                                <td><xsl:value-of select="//tei:profileDesc//tei:correspDesc[@xml:id='corresp125']//tei:date"/></td>
                                <td><xsl:value-of select="//tei:sourceDesc//tei:listPerson//tei:person[@xml:id='RS']//tei:persName"/></td>
                            </tr>
                        </table>
                        </div>
                        <!--Note sulla cartolina-->
                        <div id="note125">
                            <ul>
                                <h4>Note sulla cartolina 125</h4>
                                    <li><xsl:value-of select="//tei:fileDesc//tei:notesStmt[@xml:id='notes125']//tei:note"/></li>
                                    <xsl:element name="br" />
                                    <li><xsl:value-of select="//tei:fileDesc//tei:notesStmt[@xml:id='notes125']//tei:note[2]"/></li>
                                    <xsl:element name="br" />
                                    <li><xsl:value-of select="//tei:fileDesc//tei:notesStmt[@xml:id='notes125']//tei:note[3]"/></li>
                                    <xsl:element name="br" />
                            </ul>
                        </div>
                        <!--Pulsante per mostrare ulteriori informazioni-->
                        <p>Fare click o doppio click per mostrare le altre informazioni sulla cartolina</p>
                        <button type="submit" class="altreinfo125" id="show125" onclick="show125()">Ulteriori informazioni</button>
                            <div id="otherinfo125">
                                <ul>
                                    <h4>Altre informazioni sulla cartolina 118</h4>
                                        <li>Luogo di conservazione: <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:msDesc//tei:msIdentifier//tei:repository"/>, Città: <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:msDesc//tei:msIdentifier//tei:settlement//tei:placeName"/>,
                                        Paese: <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:msDesc//tei:msIdentifier//tei:country"/></li>
                                        <xsl:element name="br" />
                                        <li>Codice identificativo: <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:msDesc//tei:msIdentifier//tei:idno[@xml:id='idno125']" /></li>
                                        <xsl:element name="br" />
                                        <li>Materiale: <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:physDesc//tei:material"/></li>
                                        <xsl:element name="br" />
                                        <li>Dimensioni: altezza: <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:physDesc//tei:dimensions//tei:height"/>, larghezza: <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:physDesc//tei:dimensions//tei:width"/> cm</li>
                                        <xsl:element name="br" />
                                        <li>Stato di conservazione: <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:physDesc//tei:condition"/></li>
                                        <xsl:element name="br" />
                                        <li>Disponibilità: <xsl:value-of select="//tei:fileDesc//tei:publicationStmt//tei:availability"/></li>
                                        <xsl:element name="br" />
                                        <li>Lingua: <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:msContents//tei:textLang"/></li>
                                </ul>
                            </div>
                </div>
                
                <!--About-->
                <div id="info">
                    <h3>Informazioni generali e sul progetto</h3>
                    <xsl:element name="br" />
                    <p><xsl:value-of select="//tei:fileDesc//tei:titleStmt//tei:title[@xml:id='titolo']"/></p>
                    <p>Distribuito da: <xsl:value-of select="//tei:fileDesc//tei:publicationStmt//tei:distributor"/></p>
                    <p>Presso: <xsl:value-of select="//tei:fileDesc//tei:publicationStmt//tei:address//tei:addrLine[1]"/> </p>
                    <p>Anno: <xsl:value-of select="//tei:fileDesc//tei:publicationStmt//tei:date"/></p>
                    <p>Progetto realizzato per il corso di Codifica di testi AA.2021/2022 dell'<xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:listOrg//tei:orgName"/></p>
                    <p>Codifica e trascrizione a cura di: <xsl:value-of select="//tei:fileDesc//tei:titleStmt//tei:respStmt//tei:name[@xml:id='MT']"/> Mat. 607051 (m.tognoni3@studenti.unipi.it)</p>
                </div>
            </body>         
        </html>
    </xsl:template>

<!--Template per la gestione degli a capo-->
    <xsl:template match="//tei:lb">
        <br />
    </xsl:template>
</xsl:stylesheet>