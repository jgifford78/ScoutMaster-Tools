# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = EquipmentCategory.create([{ category: 'Bowls' }, { category: 'Utensils' }, { category: 'Stoves' }, { category: 'Dutch Ovens' }, { category: 'Pots' }, { category: 'Pans' }, { category: 'Lanterns' }, { category: 'Firebarrel' }, { category: 'Tents' }, {category: 'Cleaning Supplies' }, { category: 'Disposable Cooking Supplies' }, { category: 'Storage Containers' }, { category: 'Utilities' }, { category: 'Coolers' }, { category: 'Flags' }])

Unit.create(:scout_type => 'Scouts', :number => 596, :group => 70520, :sponsor_name => 'LDS Windsor Stake 3rd Ward', :city => 'Orem', :state => 'Utah')
