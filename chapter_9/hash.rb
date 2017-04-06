# 9.3.1 
# 1
h = {}

# 3
hash = Hash["Connecticut", "CT", "Delaware", "DE"]
p hash
hash = Hash[ [[1, 2], [3, 4], [5, 6]]]
p hash

# 9.3.2
# set
hash = {}
hash["New York"] = "NY"
hash.[]=("New York", "ny")
hash.store("New York", "Ny")
p hash

# get
ny = hash["New York"]
ny = hash.fetch("New York")
puts ny
array = hash.values_at("New York")
p array

# 9.3.3
h = Hash.new
p h[0]
h = Hash.new(0)
puts h["key"]
h = Hash.new { |hash, key|
  hash[key] = "default value"
}
p h
p h["key111"]
p h

# 9.3.4
# update
h1 = { "S" => "John", "J" => "Jane" }
h2 = { "S" => "Jim" }
h1.update(h2)
p h1
p h2

puts ""

# merge
h1 = { "S" => "John", "J" => "Jane" }
h2 = { "S" => "Jim" }
h3 = h1.merge(h2)
p h1
p h3

# 9.3.5
# select
h = Hash[1, 2, 3, 4, 5, 6]
p h.select { |k, v|
  k > 1
}

# invert
h = { 1 => "one", 2 => "two" }
p h.invert
p h

# clear
h = { 1 => "one" }.clear
p h

# replace
h = { 1 => "one", 2 => "two" }
h.replace({ "10" => "ten" })
p h

# 9.3.8
def m(a:, b:)
  p a, b
end

m(a: 1, b: 2)

puts ""

def m(a: 1, b: 2, **c)
  p a, b, c
end

m(x: 1, y: 2)

puts ""

def m(x, y, *z, a: 1, b: 2, **c, &block)
  p x, y, z, a, b, c
end

m(1, 2, 3, 4, 5, b: 10, p: 20, q: 30)