# LiturgiCalendar Database

Database schema required for the calendar to run, plus data for Saint Mary's in particular

## Requirements

In order to create a liturgicalendar database, you'll need:

* a [PostgreSQL](https://www.postgresql.org/) server
* a database
* a role with CREATE privileges
* connection information for your database
* a [Rambler](https://github.com/elwinar/rambler) installation

## Installing

Copy `rambler.json.dist` to `rambler.json` and enter your connection information.

From this directory, run `rambler`. If you get help message, everything is working correctly.

To bring the database up to speed with all schema and data provided here, run `rambler apply`.

