
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
                        <a class="nav-link" href="testingLocations.php">Testing Locations</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="makeAppointment.php">Make Appointment</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="viewAppointment.php">View Appointments</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="https://www.cdc.gov/coronavirus/2019-ncov/faq.html">COVID-19 Information</a>
                    </li>
                </ul>

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

                            <div class="carousel-item">
                                <img src="../images/first.png" class="d-block w-100" alt="...">
                            </div>

                            <div class="carousel-item">
                                <img src="../images/healthcare.png" class="d-block w-100" alt="...">
                            </div>

                            <div class="carousel-item">
                                <img src="../images/abuelito.png" class="d-block w-100" alt="...">
                            </div>

                            <div class="carousel-item">
                                <img src="../images/swabnose.png" class="d-block w-100" alt="...">
                            </div>

                            <div class="carousel-item">
                                <img src="../images/swabmob.png" class="d-block w-100" alt="...">
                            </div>
                            
                            <div class="carousel-item">
                                <img src="../images/testingRespecting.png" class="d-block w-100" alt="...">
                            </div>

                            <div class="carousel-item">
                                <img src="../images/testivus.png" class="d-block w-100" alt="...">
                            </div>

                        </div>
                    </div>
                </div>
                
                

                <div class = "col">
                    <div class = "jumbotron">
                        <h2 class= "display">If you're looking to make an appointment...</h2>
                        <p>Make sure to call ahead to testing locations to find specifics on procedures and times.</p>
                        <p>We cannot show the specifics on pricing, though all Pierce County COVID-19 testing sites will be offer 
                        completely free testing.</p>
                        <p>If you are looking for test result <a href = "viewAppointments.php">click here!</a></p>
                        <p>All pictures come courtesy of the official Pierce County COVID-19 testing website which we encourage you to visit <a href = "https://www.tpchd.org/healthy-people/diseases/covid-19/testing-information">here!</a></p>
                    </div>
                </div>
            </div>
        </div>


    </body>