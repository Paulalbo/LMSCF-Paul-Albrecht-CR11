<?php 
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "cr11_paulalbrecht_petadoption";

            $conn = mysqli_connect($servername, $username, $password, $dbname);

            if ($conn->connect_error) {
              die("Connection failed: " . $conn->connect_error);
            }

          // Escape user inputs for security
            $name = mysqli_real_escape_string($conn, $_REQUEST['name']);
            $breed = mysqli_real_escape_string($conn, $_REQUEST['breed']);
            $type = mysqli_real_escape_string($conn, $_REQUEST['type']);
            $age = mysqli_real_escape_string($conn, $_REQUEST['age']);
            $location = mysqli_real_escape_string($conn, $_REQUEST['location']);
            $img = mysqli_real_escape_string($conn, $_REQUEST['img']);

            // Attempt insert query execution
            $sql = "INSERT INTO animal (name, breed, type, age, location, img) 
            VALUES ('$name', '$breed', '$type', '$age', '$location', '$img')";

            if(mysqli_query($conn, $sql)){
                echo "<script type=\"text/javascript\">
                setTimeout(
                    function ()
                {
                  self.close();
                }, 3000 );
                </script><div style=\"display:flex;justify-content:center;align-itmes:center;flex-direction:column;\"><img style=\"object-fit:contain;\" src=\"https://www.healthifyme.com/blog/wp-content/uploads/2019/07/success_400x300.gif\"></div>";
            } else{
                echo "ERROR: Could not able to execute $sql. " . mysqli_error($conn);
            }
          ?>