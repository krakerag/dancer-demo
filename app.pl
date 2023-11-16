#!/usr/bin/perl
use Dancer;
 
get '/' => sub {
    return "Dancer is responding inside Docker correctly";
};
 
dance;
