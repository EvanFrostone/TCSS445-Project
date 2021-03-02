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
                    <li class="nav-item active">
                        <a class="nav-link" href="index.php">Home
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="employee.php">Testing Locations</a>
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
        <div class = "container-fluid">
            <div class = "row">
                <div class = "col">
                    <div class = "jumbotron">
                        <h1>Welcome to the Pierce County COVID-19 Testing Page.</h1>
                        <p class = "lead">COVID-19 is testing us. Test it back.</p>
                        <p>Over the course of the past year, the COVID-19 pandemic has caused a siginifcant amount of damage 
                        to our community here in Pierce County.</p>
                        <p>Now is the time for us to come together and push back against it. Make sure to continue to socially distance in public spaces, wear your mask when around others outside of your household
                        and consistently wash and sanitzie your hands. If you'd like to learn about more ways to keep youurself and others safe
                        <a href = "../web-files/protection.php">click here</a> to learn more. </p>
                    </div>
                </div>


                <div class = "col">
                    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="../images/testforpops.png" class="d-block w-100" alt="...">
                            </div>

                            <div class="carousel-item">
                                <img src="../images/healthcare.png" class="d-block w-100" alt="...">
                            </div>

                            <div class="carousel-item">
                                <img src="../images/testustestback.png" class="d-block w-100" alt="...">
                            </div>
                        </div>
                    </div>
                </div>
                
                

                <div class = "col">
                    <div class = "jumbotron">
                    
                    </div>
                </div>
            </div>
        </div>


    </body>