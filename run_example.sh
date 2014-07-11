#!/bin/sh
chdir /opt/sinatra-example
exec /sbin/setuser app bundle exec rackup
