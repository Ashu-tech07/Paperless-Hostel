<%-- 
    Document   : signin
    Created on : Feb 23, 2019, 12:41:28 PM
    Author     : Ashish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/popup.css">
        <title>Sign in</title>
    </head>
    <body>
        
         <div id="id01" class="modal">

                <form class="modal-content animate" action="getsignin.jsp">
                    <div class="imgcontainer">
                        <span onclick="document.getElementById('id01').style.display = 'none'" class="close" title="Close Modal">&times;</span>
                        <img src="MANIT-Bhopal-.png" alt="Avatar" class="avatar">
                    </div>

                    <div class="container">
                        <center><label for="uname"><b style="margin-bottom: -15px">Scholar No./Employee Id</b></label></center>
                      <center><input type="text" placeholder="Enter Scholar no./Employee id" name="sid" required></center>
                     <center><label for="psw"><b>Password</b></label></center>
                    <center><input type="password" placeholder="Enter Password" name="pass" required></center>
                        <button type="submit">Sign in</button>
                        <label>
                            <input type="checkbox" checked="checked" name="remember"> Remember me
                        </label>
                    </div>

                    <div class="container" style="background-color:#f1f1f1">
                        <button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="cancelbtn">Cancel</button>
                        <span class="psw">Forgot <a href="#">password?</a></span>
                    </div>
                </form>
            </div>

            <script>
                // Get the modal
                var modal = document.getElementById('id01');

                // When the user clicks anywhere outside of the modal, close it
                window.onclick = function(event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            </script>

    </body>
</html>
