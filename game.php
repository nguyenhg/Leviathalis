<html>
<head>
	<title>Spiel</title>
	<link rel="stylesheet" type="text/css" href="style.css" charset="utf-8" />
	<meta charset="utf-8">
</head>
<body>
<div id="container">
	<div id="menu">
		<?php
		session_start();
		if (isset($_SESSION["id"]))
		{
			echo "Willkommen im Spiel. Deine ID ist " . $_SESSION["id"] .
			"</div>
			<div id='menu2'>
				LOL HALLO was geht bei euch sou?
			</div>
			<div id='content'>
				<div id='dorf'>
					Test
				</div>
				<div id='info'>
					Test nochmal
				</div>
			</div>
			<div id='footer'>
				Copyright &copy; Marcel Gregoriadis
			</div>";
		}
		else
		{
			echo "Du bist nicht eingeloggt, du Hund!";
		}
		?>
</div>
</body>
</html>