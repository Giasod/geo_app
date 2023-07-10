# frozen_string_literal: true

class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def show
    @ticket = Ticket.find(params[:id])
    wkt_parser = ::RGeo::WKRep::WKTParser.new(nil, support_ewkt: true)
    @geometry = wkt_parser.parse(@ticket.well_known_text)
    @geojson = ::RGeo::GeoJSON.encode(@geometry)
  end
end
