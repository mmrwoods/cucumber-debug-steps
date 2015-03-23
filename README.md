# Cucumber Debug Steps

A two-man crusade\*\* against save and open page!

Adds a `Then debug` step definition and a `peek` helper method to pretty print
the DOM snapshot for the current page (nicely indented and syntax highlighted).

## Background

The code for this gem comes primarily from @diabolo, who I had the pleasure of
working with a few years ago. On our first day pairing, when I was a cucumber
and BDD novice, Andrew added these debug steps to our cucumber environment and
proceeded to completely change the way I write code. Best day pairing ever!

If you're still using `save_and_open_page` when debugging your cucumber
scenarios, stop it, install this gem and `Then debug` and `peek` instead!

## Dependencies

Cucumber, Capybara and either Debugger gem for Ruby 1.9 or Byebug for Ruby 2.

## Installation

Add to your Gemfile:

    gem 'cucumber-debug-steps', git: 'https://github.com/thickpaddy/cucumber-debug-steps.git'

And require from cucumber env.rb:

    require 'cucumber/debug_steps'

## Usage

Use `Then debug` from your cucumber scenarios to enter the debugger, e.g.

    @wip
    Scenario: Successful sign in
      Given I am a user
      When I sign in
      Then debug

When the debugger loads you can now `peek` at the DOM snapshot for the current
page (obtained from your capybara session, including javascript modifications):

    (rdb:1) peek
    <!DOCTYPE html>
    <html lang='en'>
      <head>
        <title>Demo</title>
      </head>
      <body>
        ...
        ...
      </body>
    </html>
    nil
    (rdb:1)

---

\*\* not actually a crusade
