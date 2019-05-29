<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>

     <head>
      <link rel="stylesheet" type="text/css" href="../css/clients.css"/>
      <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous' />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    </head>
      
    <body>
      <header>
        <nav class="shift"  id="navbar">
          <ul class="otro">
            <li><a href="https://goo.gl/maps/79aGMKgbAs5sRS4Y8"><i class='fas fa-location-arrow' style='font-size:20px;color:white'></i><span>Mapa</span></a></li>
            <li><a href="#"><i class='fas fa-envelope' style='font-size:20px;color:white'></i><span>E-mail</span></a></li>
            <li><a href="#"><i class="fa fa-phone" style="font-size:20px;color:white"></i><span>(+34) 666 666 666</span></a></li>
          </ul>

          <ul class="contenedor">
            <li><a href="#">Historia</a></li>
            <li><a href="#">Equipo</a></li>
            <li><a href="#cuarta-seccion">Clientes</a></li>
            <li class="logo"><a href="#">UP SOLUCIONES</a></li>
            <ul class="dropdown">
              <li><a href=""><span>Idiomas</span><span><i class="fas fa-angle-down"></i></span></a></li>
              <div class="dropdown-content">
                <li><a href="#es"><span id="spflag"></span>Español</a></li>
                <li><a href="#en"><span id="ukflag"></span>English</a></li>
              </div>
            </ul>
            <li><a href="#">Consultoria</a></li>
            <li><a href="#">Contacto</a></li>
          </ul>
        </nav>
      </header>
      
  <!-- NUESTROS CLIENTES -->
      <section>
        <div class="slideshow" >
          <h2>Nuestros clientes</h2>
          <div class="slider">
             <xsl:for-each select="clientes/cliente">
             <xsl:choose>
              <xsl:when test="@slide='1'">
              <div class="slides fade" id="slide1">
                <h3><xsl:value-of select="nombre"></xsl:value-of></h3>
                <p><xsl:value-of select="descripcion"></xsl:value-of></p>
              </div>
              </xsl:when>
              <xsl:when test="@slide='2'">
                <div class="slides fade" id="slide2">
                  <h3><xsl:value-of select="nombre"></xsl:value-of></h3>
                  <p><xsl:value-of select="descripcion"></xsl:value-of></p>
                </div>
              </xsl:when>
              <xsl:when test="@slide='3'">
                <div class="slides fade" id="slide3">
                  <h3><xsl:value-of select="nombre"></xsl:value-of></h3>
                  <p><xsl:value-of select="descripcion"></xsl:value-of></p>
                </div>
              </xsl:when>
            </xsl:choose>
            </xsl:for-each>
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
          </div>
          <div style="text-align:center; padding: 4%">
            <span class="dot" onclick="currentSlide(1)"></span> 
            <span class="dot" onclick="currentSlide(2)"></span> 
            <span class="dot" onclick="currentSlide(3)"></span> 
          </div>
        </div>
      </section>
    
    <!-- FOOTER -->
      <footer>
        <div class="primera-columna">
          <p>Complejo Empresarial Ática</p>
          <p>Vía de las Dos Castillas, 33</p>
          <p>Pozuelo de Alarcón. Madrid.</p>
        </div>
        <div class="segunda-columna">
          <ul>
            <li><a href=""><i class='fab fa-instagram' style='font-size:36px;color:white'></i></a></li>
            <li><a href=""><i class='fab fa-facebook-square' style='font-size:36px;color:white'></i></a></li>
            <li><a href=""><i class='fab fa-twitter-square' style='font-size:36px;color:white'></i></a></li>
            <li><a href=""><i class='fab fa-linkedin' style='font-size:36px;color:white'></i></a></li>
          </ul>
        </div>
        <div class="tercera-columna">
          <ul>
            <li><a href="#">Equipo</a></li>
                <li><a href="#">Historia</a></li>
                <li><a href="#">Contacto</a></li>
          </ul>
        </div>
      </footer>
       <script src="../js/navbar.js"></script>
        <script src="../js/slides.js"></script>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
