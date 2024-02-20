<?
    include_once('./compartido/formulario.php');
    class formAutenticarUsuario extends formulario
    {
        public function formAutenticarUsuarioShow()
        {
        
            $this -> cabeceraShow("autenticar usuario");
            ?>
            <form name='autenticacion' method = 'POST' action = './moduloSeguridad/getUsuario.php'>
                <table border='0' align='center'>
                    <tr>
                        <td colspan='2' align='center'>AUTENTICACION DE USUARIO</td>
                    </tr>                    
                    <tr>
                        <td> Login: </td>
                        <td> <input name = 'txtLogin' id='txtLogin' type='text' /></td>
                    </tr>
                    <tr>
                        <td> Password: </td>
                        <td> <input name = 'txtPassword' id='txtPassword' type='password'/> </td>
                    </tr>
                    <tr>
                        <td colspan='2' align='center'>
                        <input name = 'btnIngresar' id='btnIngresar' type='submit' value='Ingresar'/>
                        </td>
                    </tr>
                </table>
            </form>
            <?
            $this -> piePaginaShow();
        }
    }
?>