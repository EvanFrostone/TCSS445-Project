<?php require_once('config.php'); ?>
<!DOCTYPE html>
<html lang = "en">
    <head>
        <meta charset = "UTF-8">
        <meta name ="viewport"content="width=device-width,initial-scale=1.0">
        <link rel = "stylesheet" href = "https://bootswatch.com/4/sandstone/bootstrap.min.css">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

        <title>GoToAppointment</title> 

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
                                <a class="nav-link active" href="testingLocations.php">Testing Locations</a>
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
        <div class= "container">
            <div class = "jumbotron">
                <table class = "table table-hover">
                    <thead>
                        <th scope ="col">Clinic Name</th>
                        <th scope ="col">Clinic Address</th>
                        <th scope ="col">Clinic City</th>
                        <th scope ="col">Clinic Zip</th>
                        <th scope ="col">Adult Only?</th>
                        <th scope ="col">Drive In Only?</th>
                        <th scope ="col">Clinic Phone Number</th>
                        <th scope ="col">Starting Time</th>
                        <th scope ="col">Ending Time</th>
                    </thead>
                    <tbody>
                        <?php
                            $connection = mysqli_connect(DBHOST, DBUSER, DBPASS, DBNAME);
                            $sql = "SELECT ClinicName, ClinicAddress, ClinicCity, ClinicZip, ClinicAdultOnly, ClinicDriveInTest, ClinicPhoneNumber, TestingStartTime, TestingEndTime
                            FROM Clinics";
                            if($result = mysqli_query($connection, $sql))
                            {
                                while($row = mysqli_fetch_assoc($result))
                                {
                                ?>
                                <tr>
                                    <td><?php echo $row['ClinicName']?></td>
                                    <td><?php echo $row['ClinicAddress']?></td>
                                    <td><?php echo $row['ClinicCity']?></td>
                                    <td><?php echo $row['ClinicZip']?></td>
                                    <td><?php echo $row['ClinicAdultOnly']?></td>
                                    <td><?php echo $row['ClinicDriveInTest']?></td>
                                    <td><?php echo $row['ClinicPhoneNumber']?></td>
                                    <td><?php echo $row['TestingStartTime']?></td>
                                    <td><?php echo $row['TestingEndTime']?></td>
                                </tr>
                                <?php 
                                }
                                mysqli_free_result($result);
                            }
                        ?>
                    </tbody>
                </table>        
            </div>
        
        </div>
                
    </body>