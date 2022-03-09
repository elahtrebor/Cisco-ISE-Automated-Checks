#!/usr/bin/perl

($ip) = (@ARGV);
if(@ARGV < 1){ print "incorrect arguments detected. Please use $0 <IP>\n"; 
 exit;
}

$u = "YourUser";
$p="$yourPw";
$k= "yourSharedSecret";

$command = `radtest $u '$p' $ip 1812 $k`;

if($command =~/Received Access\-Accept/){ 

 print "Radius Auth Passed.\n";
 }
else { print "Radius Check Failed\n"; }

