# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Address.create(address: '49 Farm Lane', city_id: 1)
Facility.create(name: "Farmspace", address: 1)
Room.create(cultivator_id: 1, facility_id: 1, size: 800, unit: "flowering")
Sensor.create(room_id: 1)
Temperature.create(value: 35.32, sensor_id: 1)
Humidity.create(value: 23, sensor_id: 1)
AirQuality.create(value: 25.84, sensor_id: 1)
Luman.create(value: 25_003_32, sensor_id: 1)
