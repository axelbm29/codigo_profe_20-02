<?
        function validarBoton($boton)
        {
            return isset($boton);            
        }
        function validarCamposTexto($login,$password)
        {
            return (strlen($login) >3 and strlen($password) > 3);            
        }

        $boton = $_POST['btnIngresar'];
        if(validarBoton($boton))
        {
            $login = strtolower(trim($_POST['txtLogin']));
            $password = trim($_POST['txtPassword']);
            if(validarCamposTexto($login,$password))
            {
                    echo "chever";
            }
            else
            {
                include_once('../compartido/screenMensajeSistema.php');
                $objMensaje = new screenMensajeSistema();
                $objMensaje -> screenMensajeSistemaShow("Los datos ingresados no son validos<br>intente nuevamente","<a href='../index.php'>Ir al inicio</a>");                
            }
        }
        else
        {
            include_once('../compartido/screenMensajeSistema.php');
            $objMensaje = new screenMensajeSistema();
            $objMensaje -> screenMensajeSistemaShow("Se esta tratando de vulnerar el sistema <br>ingrese adecuedamente","<a href='../index.php'>Ir al inicio</a>");
        }
?>