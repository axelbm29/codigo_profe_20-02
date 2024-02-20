<?
    class formulario
    {
        protected function cabeceraShow($titulo)
        {
            ?>
            <html>
                <head>
                    <title><? echo $titulo ?></title>
                </head>
                <body>
                    <marquee>UNTELS</marquee>
                    <hr>
            <?
        }
        protected function piePaginaShow()
        {
            ?>
                <hr>
                <marquee>SISTEMAS 2024</marquee>
                 </body>
            </html>
            <?
        }        
    }
?>