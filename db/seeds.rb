# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'mtg_sdk'

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Colour.create(name: 'Black')
Colour.create(name: 'White')
Colour.create(name: 'Blue')
Colour.create(name: 'Green')
Colour.create(name: 'Red')

types = MTG::Type.all
subtypes = MTG::Subtype.all
supertype = MTG::Supertype.all

types.each do |type|
  Type.create(name: type)
end

subtypes.each do |subtype|
  Subtype.create(name: subtype)
end

supertype.each do |supertype|
  Supertype.create(name: supertype)
end

cards = MTG::Card.where(set: 'AER').all

cards.each do |card|
  Card.create(name: card.name,
              multiverseid: card.multiverse_id,
              layout: card.layout,
              mana_cost: card.mana_cost,
              cmc: card.cmc,
              full_type: card.type,
              rarity: card.rarity,
              text: card.text,
              flavour: card.flavor,
              artist: card.artist,
              number: card.number,
              power: card.power,
              toughness: card.toughness,
              loyalty: card.loyalty,
              image_url: card.image_url,
              set: card.set,
              set_name: card.set_name,
              price: 0.05,
              quantity: 5)
end
