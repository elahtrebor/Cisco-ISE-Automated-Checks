#!/usr/bin/perl

$key = 'YourTacacsKey';

if(@ARGV < 1){ print "Incorrect arguments. Please use $0 <IP>\n";
 exit;
 }
($ip) = (@ARGV);
 $server = $ip;
print "ATTEMPTING ACCESS FOR $server\n";
use Authen::TacacsPlus;                                             
                                                             
$tac = new Authen::TacacsPlus(Host=>$server,Key=>$key);  
unless ($tac){                                              
        print "Error: ",Authen::TacacsPlus::errmsg(),"\n";          
        exit(1);                                            
}                                                           
if ($tac->authen("YourTacacsUser","YourTACACS_PW")){                   
        print "Granted\n";                                  
} else {                                                    
        print "Denied: ",Authen::TacacsPlus::errmsg(),"\n";         
}                                                           
$tac->close(); 
