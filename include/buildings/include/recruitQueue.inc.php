<?php
require "../../../db.inc.php";
date_default_timezone_set("Europe/Berlin");
$villageId = $_GET["village"];
$recs = mysqli_query($db, "SELECT * FROM recruitOrders WHERE villageId = '$villageId'");
if (mysqli_num_rows($recs) > 0) {
	echo "<table border=1>
		<tr><td><b>Rekrutierung</b></td><td><b>Dauer</b></td><td><b>Fertigstellung</b></td></tr>";
	while ($rec = mysqli_fetch_assoc($recs))
	{
		$unit = $rec["unit"];
		$amount = $rec["amount"];
		$timeUQueue = ($rec["amount"] - 1) * $rec["duration"];
		$timeUCurrent = $rec["duration"] - (time() - (($rec["totalAmount"] - $rec["amount"]) * $rec["duration"] + $rec["beginTime"]));
		$duration = gmDate("H:i:s", $timeUQueue + $timeUCurrent);
		$fertigstellung = $rec["amount"] * $rec["duration"] + $rec["beginTime"];
		// Zeit formatieren
		$time = date("H:i:s", $fertigstellung - time());
		// Wann ist es fertig?
		$builtOnD = date("d.m.", $fertigstellung);
		$builtOnT = date("H:i:s", $fertigstellung);
		echo "<tr><td>$amount $unit</td><td>$duration</td><td>am $builtOnD, um $builtOnT Uhr</td></tr>";
	}
	echo "</table><br>";
}