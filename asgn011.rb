require_relative 'manage_farm'

alpha = Field.purchase(1, 10)
bravo = Field.purchase(2, 20)
charlie = Field.purchase(1, 30)
delta = Field.purchase(2, 40)

first_use = Manage_farm.new("Ronnie")
first_use.main_menu