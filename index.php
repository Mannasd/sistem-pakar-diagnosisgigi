<?php
$servername = "localhost";
$username = "root";
$password = "Temulawak2133*";
$dbname = "diagnosis_gigi";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

function backwardChaining($gejalaInput, $conn) {
    $sql = "SELECT * FROM penyakit";
    $result = $conn->query($sql);

    $penyakitKemungkinan = array();

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $kodePenyakit = $row["kode"];
            $namaPenyakit = $row["nama"];

            $sqlRelasi = "SELECT kode_gejala FROM relasi WHERE kode_penyakit = '$kodePenyakit'";
            $resultRelasi = $conn->query($sqlRelasi);

            $totalGejala = $resultRelasi->num_rows;
            $matchGejala = 0;

            if ($totalGejala > 0) {
                while ($rowRelasi = $resultRelasi->fetch_assoc()) {
                    if (in_array($rowRelasi["kode_gejala"], $gejalaInput)) {
                        $matchGejala++;
                    }
                }
            }

            $probabilitas = $matchGejala / $totalGejala;
            if ($probabilitas > 0) {
                $penyakitKemungkinan[$namaPenyakit] = $probabilitas;
            }
        }
    }

    arsort($penyakitKemungkinan); // Sort by probability in descending order
    return $penyakitKemungkinan;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $gejalaInput = $_POST["gejala"];

    $hasilDiagnosis = backwardChaining($gejalaInput, $conn);

    if (!empty($hasilDiagnosis)) {
        echo "<h2>Hasil Diagnosis (berdasarkan probabilitas):</h2>";
        echo "<ul>";
        foreach ($hasilDiagnosis as $penyakit => $probabilitas) {
            echo "<li>" . $penyakit . " - " . round($probabilitas * 100, 2) . "%</li>";
        }
        echo "</ul>";
    } else {
        echo "<h2>Tidak ditemukan penyakit yang sesuai dengan gejala yang diberikan.</h2>";
    }
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Sistem Diagnosis Penyakit Gigi</title>
</head>
<body>
    <h1>Sistem Diagnosis Penyakit Gigi</h1>
    <form method="POST" action="">
        <h3>Pilih Gejala yang Dialami:</h3>
        <?php
        $sql = "SELECT * FROM gejala";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo '<input type="checkbox" name="gejala[]" value="' . $row["kode"] . '">' . $row["nama"] . '<br>';
            }
        }
        ?>
        <br>
        <input type="submit" value="Diagnosa">
    </form>
</body>
</html>
<?php
$conn->close();
?>