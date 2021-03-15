<?php require_once('config.php'); ?>
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
                                <a class="nav-link active" href="viewAppointment.php">View Appointments</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="https://www.cdc.gov/coronavirus/2019-ncov/faq.html">COVID-19 Information</a>
                            </li>
                        </ul>

                    </div>
        </nav>

        <div class = "container">
            <div class = "jumbotron">
                <form method = "get" action = "viewAppointment.php">
                    <div class = "mb-3">
                        <label for = "emailaddress">Please enter your email address:</label>
                        <input class = "form-control" type = "text" id = "emailaddress" name = "email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"required>
                    </div>
                    
                    <div class = "mb-3">
                        <button class = "btn btn-success" type = "submit">Search</button>
                    </div>
                </form>
                <?php
                if($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET['email'])) 
                {
                ?>
                <table class = "table table-hover">
                    <thead>
                        <tr>
                            <th scope = "col">Patient First Name</th>
                            <th scope = "col">Patient Last Name</th>
                            <th scope = "col">Appointment Date</th>
                            <th scope = "col">Appointment Time</th>
                            <th scope = "col">Appointment Type</th>
                            <th scope = "col">Clinic Name</th>
                            <th scope = "col">Clinic Address</th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php
                            $connection = mysqli_connect(DBHOST, DBUSER, DBPASS, DBNAME);
                            $sql = "SELECT PatientFirstName, PatientLastName, AppointmentDate, AppointmentTime, AppointmentType, ClinicName, ClinicAddress 
                            FROM PATIENTS 
                            JOIN APPOINTMENTS ON PATIENTS.PatientID = APPOINTMENTS.PatientID 
                            JOIN CLINICS ON APPOINTMENTS.ClinicID = CLINICS.ClinicID WHERE PatientEmail = '{$_GET['email']}'";
                            if($result = mysqli_query($connection, $sql)){
                                while($row = mysqli_fetch_assoc($result)){
                                    ?>
                                    <tr>
                                        <td><?php echo $row['PatientFirstName']?></td>
                                        <td><?php echo $row['PatientLastName']?></td>
                                        <td><?php echo $row['AppointmentDate']?></td>
                                        <td><?php echo $row['AppointmentTime']?></td>
                                        <td><?php echo $row['AppointmentType']?></td>
                                        <td><?php echo $row['ClinicName']?></td>
                                        <td><?php echo $row['ClinicAddress']?></td>
                                    </tr>
                                    <?php
                                }

                                mysqli_free_result($result);
                            }
                        }
                            ?>
                    </tbody>
                
                </table>
            </div>
        </div>
    </body>
</html>