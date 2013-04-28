#!/usr/bin/env ruby
$: << 'lib'
require 'rubygems'
require 'sww'

url = "awtest1.vm.bytemark.co.uk"
name = Faker::Internet.user_name

jabberspace = JabberSpace.on "rswwbot@#{url}", "stoomboot"

player = Player.new(name, jabberspace.create_room, jabberspace)
player.play("sww@#{url}")

$stdin.readline
