#!/usr/bin/perl

# PERL MODULE
use DBI;
use MP3::Tag;
use MP4::Info;

# HTTP HEADER
print "Content-type: text/html \n\n";

# CONFIG VARIABLES
$database = "archivesupport";
$host = "DBI:mysql:database=$database;host=10.103.7.102";
$user = "archivesupport";
$pw = "p0sVQEZobI6VT7FA";

# directories
$kmedia = "C:\\work\\kmedia"; # \\\\bb-176\\Converted\\KMedia\\ <--- for production

%s2t = (
	$kmedia => "C:\\work\\target1",
);

# PERL MYSQL CONNECT
$dbh = DBI->connect($host, $user, $pw, {'RaiseError' => 1});

my $sql = "SELECT name FROM a3m_script";
my $sth = $dbh->prepare($sql) or die "Cannot prepare: " . $dbh->errstr();
$sth->execute() or die "Cannot execute: " . $sth->errstr();
while (my $field = $sth->fetchrow_array())
{
	print "$field\n";
}
$sth->finish();

sub change_metadata($fname)
{

}

opendir(KMEDIA, $kmedia) || die "Can't open directory.\n";
@files = readdir(KMEDIA);
closedir(KMEDIA);
foreach $file (@files){
   print "$file\n";
}

print "we finished";