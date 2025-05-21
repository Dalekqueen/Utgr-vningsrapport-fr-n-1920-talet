<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:html="http://www.w3.org/1999/xhtml" 
    exclude-result-prefixes="xs tei html" 
    version="2.0">
    
    <xsl:output method="html"/>
    
    <xsl:template match="tei:TEI">
        <html lang="en" xml:lang="en">
            <head>
                <title>DCHM Template: Hem</title>
                <link rel="stylesheet"
                    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                    crossorigin="anonymous"/>
                <link rel="stylesheet" href="assets/css/main.css"/>
            </head>
            <body>
                <header>
                    <h1>
                        <xsl:apply-templates select="//tei:titleStmt/tei:title"/>
                    </h1>
                </header>
                <nav id="sitenav">
                    <a href="index.html">Hem</a> |
                    <a href="bakgrund.html">Bakgrund</a> |
                    <a href="transkribering.html">Transkribering</a> |
                    <a href="bilagor.html">Bilagor i rapport</a> |
                </nav>
                
                <main id="manuscript">
                    <div class="container">
                        <div class="row">
                            <!-- Make one colummn for the chosen picture below -->
                            <div class="col-sm-6">
                                <article id="collection">
                                        <img class="img-thumb">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="//tei:surface[@xml:id='kartskiss']//tei:figure/tei:graphic[2]/@url"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="title">
                                                <xsl:value-of select="//tei:surface[@xml:id='kartskiss']//tei:figure/tei:label"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="alt">
                                                <xsl:value-of select="//tei:surface[@xml:id='kartskiss']//tei:figure/tei:figDesc"/>
                                            </xsl:attribute>
                                        </img>
                                    </article>
                            </div>
                            
                            
                            <!-- column for the desciption element -->
                            <div class="col-sm-6">
                                <article id="Omprojektet">
                                    <p>
                                        <strong>Om projektet:</strong> &#160;
                                    </p>
                                    <p>
                                        <xsl:value-of select="//tei:projectDesc"/>
                                    </p>
                                   
                                    <!--only in this document no correlation in TEI-->
                                    <p class="text-special"><strong>Besök gärna projektets GitHub:</strong></p>
                                    <p class="text-special"><a target="_blank" href="https://github.com/Dalekqueen/Utgr-vningsrapport-fr-n-1920-talet">
                                        Se allt material här </a>
                                     </p>
                                    
                 
                                    <p class="text-special"><strong>Eller läs mer om Historiska museet vid Lunds universitet här:</strong></p>
                                    <p class="text-special"><a target="_blank" href="https://www.historiskamuseet.lu.se/">
                                        Historiska museet vid Lunds universitet </a>
                                    </p>

                                </article>
                            </div>
                        </div>
                        
                        <!-- bottom row for the remaining information -->
                        <div class="row">
                            <div class="col-sm">
                                <article id="details">
                                    <p>
                                        <strong>Författare:</strong><br/>
                                        <xsl:apply-templates select="//tei:titleStmt/tei:author"/>
                                    </p>
                                    <p>
                                        <strong>Digitaliserat av:</strong><br/>
                                        <xsl:apply-templates select="//tei:titleStmt/tei:principal"/>
                                    </p>
                                    <p>  
                                        <strong>Institution:</strong><br/>
                                        <xsl:apply-templates select="//tei:publicationStmt/tei:authority"/>
                                    </p>
                                    <p>  
                                        <strong>Universitet:</strong><br/>
                                        <xsl:apply-templates select="//tei:publicationStmt/tei:publisher"/>
                                    </p>
                                    <p>
                                        <strong>Datum:</strong><br/>
                                        <xsl:apply-templates select="//tei:publicationStmt/tei:date"/>
                                    </p>
                                  
                                </article>
                                
                                
                            </div>
                        </div>
                    </div>
  0              </main>
                <footer>
                    <div class="row" id="footer">
                        <div class="col-sm copyright">
                            <div>
                                <a href="https://creativecommons.org/licenses/by/4.0/legalcode">
                                    <img src="assets/img/logo/ccby.svg" class="copyright_logo" alt="Creative Commons License"/><img src="assets/img/logos/ccby.svg" class="copyright_logo" alt="Creative Commons License Attribution 4.0 International"/>
                                </a>
                            </div>
                        </div>
                    </div>
                </footer>
                
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
            </body>
        </html>
        
    </xsl:template>
    
   
</xsl:stylesheet>