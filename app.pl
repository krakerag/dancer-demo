#!/usr/bin/perl
use Dancer;
 
get '/' => sub {
    return "Dancer is responding inside Docker container on a Gitpod instance in the cloud";
};
 
dance;
