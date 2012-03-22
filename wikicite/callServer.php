<?php

if(isset($_POST['urlsend'])&&isset($_POST['datasend'])){
	$urlsend = $_POST['urlsend'];
	$datasend = stripslashes($_POST['datasend']);
	
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, $urlsend . '?' . $datasend);
	$custom_headers = array();
	$custom_headers[] = "Accept: application/json";
	curl_setopt($ch, CURLOPT_HTTPHEADER, $custom_headers);
	header("Content-type: text/javascript");
	curl_exec($ch);
}


?>