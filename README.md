> [!WARNING]
> This may not work with decks created by newer version of Anki. Hopefully this
> will be fixed in the next release.
> See https://github.com/zfletch/apkg-to-csv/issues/3 for more information.

# APKG to CSV

Convert [Anki](https://apps.ankiweb.net/) deck (`.apkg`) files to comma-separated values (`.csv`) files.

## Motivation

There is a large collection of [shared Anki decks](https://ankiweb.net/shared/decks/) available online.
It can be difficult to work with these decks without first importing them into Anki.

`apkg-to-csv` converts these decks into comma-separated values so that they can be modified without first importing them into Anki.

## Requirements

* `ruby >= 3.0`

## Installation

* `gem install apkg-to-csv`

## Usage

* `apkg-to-csv deck.apkg > deck.csv`

## Development Installation

```
gem install bundler
bundle install
```

## Running Tests

* `bundle exec bash ./test/test.sh`
