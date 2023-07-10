# README
This is a test assignment for Cirruslabs company, an application that receives a JSON
with certain geospatial data and then displays it on the map.

I used gems `rgeo` and `rgeo-geojson` for these purposes, for tests I used `RSpec` +
`FactoryBot`, `rubocop` for linter and `active_model_serializers` for serialization.

This was not mentioned in the task, but I thought that it's vital for the application's
correct work, so I made the `WellKnownText` parameter mandatory.

On the frontend side of things I used `bootstrap` for css and `leaflet` for the map.

About the app: ruby version 3.2.0, rails version 7.0.6, postgres version 14.6.