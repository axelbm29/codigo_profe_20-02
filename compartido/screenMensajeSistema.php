<?
    include_once('formulario.php');
    class screenMensajeSistema extends formulario
    {
        public function screenMensajeSistemaShow($mensaje,$enlace)
        {
            $this -> cabeceraShow("Mensaje del Sistema");
            ?>
            <p>
            <center> <strong> <? echo strtoupper($mensaje) ?></strong> </center>
            </p>
            <p>
                <center><? echo $enlace ?></center>
            </p>
            <?
            $this -> piePaginaShow();
        }
    }
?>