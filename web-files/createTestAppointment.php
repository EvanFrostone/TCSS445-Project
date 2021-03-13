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
                        <a class="nav-link" href="index.php">Home
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="employee.php">Testing Locations</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="makeAppointment.php">Make Appointment</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="makeAppointment.php">View Appointments</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="project.php">COVID-19 Information</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class = "container">
            <div class = "jumbotron">
                <h2 class = "display">Create A Testing Appointment</h2>
                <form class ="needs-validation" method = "GET" action = "post" onsubmit="return checkPassword(this)">
                    <table class = "table table-hover">
                        <thead>
                            <tr>
                                <th scope = "col">Date</th>
                                <th scope = "col">Time</th>
                                <th scope = "col">Type</th>
                            </tr>
                        </thead>
                    </table>
                </form>
            </div>
        </div>
    </body>