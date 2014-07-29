# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.delete_all

Project.create(
  :name => 'Programming Ruby 1.9',
  :description =>
    %{<p>
      Ruby is the fastest growing and most exciting dynamic language
      out there. If you need to get working programs delivered fast,
      you should add Ruby to your toolbox.
    </p>},
  :image_url => '/images/ruby.jpg',
  :folio => 'AJ2345',
  :authorization_number => 'MTR/2014',
  :work_number => 'WRK/2014',
  :expected_amount => 210000,
  :authorized_amount => 201400.80,
  :location => 'ZMVM',
  :executor => 'Sepladerym')
