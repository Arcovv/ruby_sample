# 10.2

states = ["Louisiana", "West", "New York"]

# Does the array include Louisiana?
puts states.include?("Louisiana")

# Does all states include a space?
puts states.all? { |state| state =~ / / }

# Does any states include a space?
puts states.any? { |state| state =~ / / }

# Is there one, and only one ,state with "West" in its name?
puts states.one? { |state| state =~ /West/ }

# Are there no states with "East" in their names?
puts states.none? { |state| state =~ /East/ }