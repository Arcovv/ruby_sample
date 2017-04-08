# 9.5

require 'set'

# 9.5.1

new_test = ["A", "B", "C", "D", "A", "B", "A"]
set = Set.new(new_test)
p set

names = ["David", "Yukihiro", "Chad", "Amy"]
name_set = Set.new(names) { |name| name.upcase }
p name_set

# 9.5.2
puts "9.5.2"

tri_state = Set.new(["New Jersey", "New York"])
tri_state << "Connecticut"
p tri_state

tri_state.delete("New York")
p tri_state
tri_state.delete("Not existed")
p tri_state

state_set = Set.new(["Connecticut", "Maine", "Massachusetts", "New Hampshire", "Rhode Island", "Vermont"])
tri_state = Set.new(["Connecticut", "New Jersey", "New York"])

# Subtraction (difference/-)
print "-: "
p state_set - tri_state

# Addition (union/+/|)
print "+: "
p state_set + tri_state

# Intersection (&)
print "&: "
p state_set & tri_state

print "|: "
p state_set | tri_state

print "^: "
p state_set ^ tri_state

tri_state = Set.new(["Connecticut", "New Jersey"])
puts tri_state.object_id
tri_state.merge(["New York"])
puts tri_state.object_id

s = Set.new([1, 2, 3])
s.merge({ "New Jersey" => "NJ", "Maine" => "ME" })
p s

state_set = Set.new(["New York", "New Jersey"])
state_hash = { "Maine" => "ME", "Vermont" => "VT" }
state_set.merge(state_hash.keys)
p state_set

# 9.5.3
puts "9.5.3"

small_states = Set.new(["Connecticut", "Delaware", "Rhode Island"])
tiny_states = Set.new(["Delaware", "Rhode Island"])
puts tiny_states.subset?(small_states)
puts small_states.superset?(tiny_states)