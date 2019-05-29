<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
    <html>
     
    <head>

    <link rel="stylesheet" type="text/css" href="../css/team.css"/>
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous' />
    </head>
    
    <body>
    
      <div class="conimagen conimagenfull">
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


  <div class="titulo">
    <h3 id="titulo">Quiénes somos</h3>
    <a href="#helado" class="boton-multi">Ver vídeo<span style="margin-right: 4px;"></span><i class="fa fa-play-circle"></i></a>
    <div id="helado" class="overlay">
      <div class="popup">
        <a class="close" href="#" onclick="pararVideo()">&#215;</a>
        <iframe width="560" height="315" src="https://www.youtube.com/embed/BobGgw7f098" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" id="cierrevideo"></iframe>        
      </div>
    </div>
    <a href="#halloween" class="boton-multi">Escuchar audio<span style="margin-right: 4px;"></span><i class="fas fa-music"></i></a>
    <div id="halloween" class="overlay">
      <div class="popup">
        <a class="close" href="#" onclick="pararAudio()">&#215;</a>
        <audio controls="" id="cierreaudio">
          <source src="../media/halloween.ogg"></source>
        </audio>
      </div>
    </div>
  </div>
  
  <div class="todas-secciones">
  
    <section class="nuestro-equipo">
      <h2>Nuestro equipo</h2>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. </p>
    </section>
    
  <section class="equipo">
    <xsl:for-each select="equipo/persona">
    <xsl:choose>
    <xsl:when test="@orientacion='i'">
              <div class="team-column">
        <div class="card reverse">
        <img>
          <xsl:attribute name="src">
            <xsl:value-of select="imagen" />
         </xsl:attribute>
         </img>
        <div class="team-container reverse-alignment">
            <h2><xsl:value-of select="nombre"/></h2>
            <p><xsl:value-of select="descripcion"/></p>
            <button class="button">Contacto</button>
          
        </div>
        </div>
      </div>
    
      </xsl:when>
      <xsl:otherwise>
      <div class="team-column">
        <div class="card normalrow">
        <img>
          <xsl:attribute name="src">
            <xsl:value-of select="imagen" />
         </xsl:attribute>
         </img>
        <div class="team-container">
            <h2><xsl:value-of select="nombre"/></h2>
            <p><xsl:value-of select="descripcion"/></p>
            <button class="button">Contacto</button>
        </div>
        </div>
      </div>
      </xsl:otherwise>
      </xsl:choose>
  </xsl:for-each>
 
  </section>
 </div>
 
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
  <script src="../js/stopvideo.js"></script>
  <script src="../js/stopaudio.js"></script>
  </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>