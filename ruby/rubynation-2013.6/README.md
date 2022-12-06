# The Official 2013 RubyNation Gem!

## Installation

Run:

    $ gem install rubynation

or add this line to your application's Gemfile:

    gem 'rubynation'

and then execute:

    $ bundle

## Usage

    > require 'rubynation'

    > RubyNation::Schedule.print

    Thursday, June 13, 2013
    +-------------+--------------------------------------------------------------------------+
    | 09:00-05:30 |                     Rails Girls DC Training Session                      |
    +-------------+--------------------------------------------------------------------------+
    | 06:00-08:30 | RailsGirls DC/RubyNation Twisted Willow Party Sponsored by AT&T and SAIC |
    +-------------+--------------------------------------------------------------------------+
    ...

    > RubyNation::Drinkups.print

    Thursday, June 13, 2013
    +-------------+--------------------------------------------------------------------------+
    | 06:00-08:30 | RailsGirls DC/RubyNation Twisted Willow Party Sponsored by AT&T and SAIC |
    +-------------+--------------------------------------------------------------------------+
    ...

    > RubyNation::DrawingEntry.create!("foo@example.com")

    => "You currently have a 100% chance to win an iPod Nano!"
