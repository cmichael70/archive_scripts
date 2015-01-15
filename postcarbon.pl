#!/usr/bin/perl

# PERL MODULE
use DBI;

# HTTP HEADER
print "Content-type: text/html \n\n";

# CONFIG VARIABLES
$database = "archivesupport";
$host = "DBI:mysql:database=$database;host=mysql.local";
$user = "archivesupport";
$pw = "p0sVQEZobI6VT7FA";

# PERL MYSQL CONNECT
$connect = DBI->connect($host, $user, $pw, {'RaiseError' => 1});

print "hello world";