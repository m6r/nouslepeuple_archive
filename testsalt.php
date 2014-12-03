<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        define("SALT_LENGTH", 9);
            function generateHash($plainText, $salt = null)
            {
                if ($salt === null)
                {
                    $salt = substr(hash('sha512',uniqid(rand(), true)), 0, SALT_LENGTH);
                }
                else
                {
                    $salt = substr($salt, 0, SALT_LENGTH);
                }
                return $salt . hash('sha512',$salt . $plainText);
            }
        // put your code here
        $code = (isset($_GET["code"]))? $_GET["code"]:"";
         
        ?>
        <form>
            <input type="text" name="code" method="post" value="<?=$code?>" action="<?=$_SERVER['PHP_SELF']?>"/>
            <input type="submit"/>
        </form>
        <?php
        if (isset($_GET["code"])){
            $pass = generateHash($_GET["code"]);
            echo "code = ".$pass."<br/>";
            echo "longueur = ".strlen($pass)."<br/>";
            echo "salt = ".substr($pass, 0, SALT_LENGTH)."<br/>";
        
        }
        ?>
    </body>
</html>
