
<?php require_once('config.php'); ?>

<?php
    $connection = mysqli_connect(DBHOST, DBUSER, DBPASS, DBNAME);
    if (mysqli_connect_errno())
    {
        die(mysqli_connect_error());
    }?>
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
                <h2 class = "display">Create A Testing Appointment</h2>
                <form class ="needs-validation" method = "GET" action = "appointmentLanding.php" onsubmit="return checkPassword(this)">
                    <div class = "mb-3">
                        <label for "dateSelector">Select A Date:</label>
                        <select id = "dateSelector" name = "appointmentDate" class ="form-control">
                            <?php
                                date_default_timezone_set('America/Vancouver');
                                $connection = mysqli_connect(DBHOST, DBUSER, DBPASS, DBNAME);
                                if (mysqli_connect_errno())
                                {
                                    die(mysqli_connect_error());
                                }
                                $sql = "SELECT TestingDay FROM Clinics WHERE ClinicID = '{$_GET['clinic']}'";
                                $result = mysqli_query($connection, $sql);
                                $row = mysqli_fetch_assoc($result);
                                $days = $row['TestingDay'];
                                $currentDate = date('Y-m-d', strtotime("+1 days"));
                                for($i=2; $i <= $days+2; $i++){
                                    echo '<option value ="'.$currentDate.'">';
                                    echo $currentDate;
                                    echo "</option>";
                                    $currentDate = date("Y-m-d", strtotime("+$i days"));
                                }
                            ?>
                        </select>
                    </div>
                    <div class = "mb-3">
                        <label for "timeSelector">Select A Time:</label>
                        <select id = "timeSelector" name = "appointmentTime" class = "form-control">
                            <?php
                                    date_default_timezone_set('America/Vancouver');
                                    $connection = mysqli_connect(DBHOST, DBUSER, DBPASS, DBNAME);
                                    if (mysqli_connect_errno())
                                    {
                                        die(mysqli_connect_error());
                                    }
                                    $sql = "SELECT TestingStartTime, TestingEndTime FROM Clinics WHERE ClinicID = '{$_GET['clinic']}'";
                                    $result = mysqli_query($connection, $sql);
                                    $row = mysqli_fetch_assoc($result);
                                    $startTime = $row['TestingStartTime'];
                                    $endTime = $row['TestingEndTime'];
                                    while($startTime <= $endTime)
                                    {
                                        if(strlen($startTime) > 3)
                                        {
                                            $displayValue = substr_replace($startTime, ":", 2,0);
                                            echo '<option value = "'.$startTime.'">';
                                            echo $displayValue.'</option>';
                                        }
                                        else{
                                            $displayValue = $displayValue = substr_replace($startTime, ":", 1,0);
                                            echo '<option value = "'.$startTime.'">';
                                            echo $displayValue.'</option>';
                                        }
                                        $startTime = $startTime +100;
                                    }
                                ?>
                            </select>
                        </div>

                        <div class = "mb-3">
                            <label for "testType">What Type of Appointment is This?:</label>
                            <select id = "testType" name = "testType" class = "form-control">
                                    <option value = "Vaccination">Vaccination</option>
                                    <option value = "COVID-19 Test">COVID-19 Test</option>
                            </select>        
                        </div>
                    <div class = "mb-3">
                        <button class = "btn btn-success" type = "submit">Create Appointment</button>
                        
                    </div>
                    <input style = "visibility:hidden; height = 0px; padding = 0px;" type = "text" name = "email" value = "<?php echo $_GET['email']?>"></input>
                    <input style = "visibility:hidden; height = 0px; padding = 0px;" type = "text" name = "cid" value = "<?php echo $_GET['clinic']?>"></input>
                </form>
            </div>
        </div>
    </body>
</html>