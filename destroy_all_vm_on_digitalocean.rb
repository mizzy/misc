#!/usr/bin/env ruby

require 'digitalocean'

Digitalocean.client_id = ENV['DIGITALOCEAN_CLIENT_ID']
Digitalocean.api_key   = ENV['DIGITALOCEAN_API_KEY']

Digitalocean::Droplet.all.droplets.each do |d|
  Digitalocean::Droplet.destroy(d.id)
end
