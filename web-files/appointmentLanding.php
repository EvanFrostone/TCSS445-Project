<?php require_once('config.php'); ?>
<?php
    $connection = mysqli_connect(DBHOST, DBUSER, DBPASS, DBNAME);
    if (mysqli_connect_errno())
    {
        die(mysqli_connect_error());
    }
    $sql = "SELECT PatientID FROM Patients
    WHERE PatientEmail = '{$_GET['email']}'";
    $result = mysqli_query($connection, $sql);
    $row = mysqli_fetch_assoc($result);
    $usefulBit = $row['PatientID'];
    $sql = "insert into Appointments (ClinicID, PatientID, AppointmentDate, AppointmentTime, AppointmentType) values ('$_GET[cid]', '$usefulBit', DATE '$_GET[appointmentDate]', '$_GET[appointmentTime]', '$_GET[testType]');" ;
    $result = mysqli_query($connection, $sql);
    mysqli_close($connection);
?> 
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
        <div class = "container">
            <div class = "jumbotron">
                <p>We have successfully created your appointment! Please click the "View Appointments" tab to view all of your appointments .</p>

            </div>
        </div>
    </body>