<!DOCTYPE html>
<html lang = "en">
    <head>
        <meta charset = "UTF-8">
        <meta name ="viewport"content="width=device-width,initial-scale=1.0">
        <link rel = "stylesheet" href = "https://bootswatch.com/4/sandstone/bootstrap.min.css">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

        <title>Pierce County COVID-19 Testing</title> 

    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="index.php">Pierce County Covid Testing</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarColor02">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="../web-files/index.php">Home
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="employee.php">Employee</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="department.php">Department</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="project.php">Project</a>
                    </li>
                </ul>
                <form action = "../web-files/login.php"class="form-inline my-2 my-lg-0">
                    <button class="btn btn-primary my-2 my-sm-0" type="submit">Login</button>
                </form>
            </div>
        </nav>

        <div class = "container">
            <div class = "jumbotron">
                <h2 class = "display">Login to your Testing Account</h2>
                <form method = "GET" action =>
                    <div class = "form-group">
                        <label for "emailaddress">Email Address</label>
                        <input type = "email" class = "form-control" id = "emailaddress" placeholder="Enter you Email">
                        <label for "password">Password</label>
                        <input type = "password" class = "form-control" id = "password" placeholder = "Enter your Password">
                    </div>
                    <button type = "submit" class = "btn btn-success">Login</button>
                    <p><a href = "../web-files/forogt-password.php">Forgot your password?</a></p>
            </div>
        </div>
        
    </body>
</html>