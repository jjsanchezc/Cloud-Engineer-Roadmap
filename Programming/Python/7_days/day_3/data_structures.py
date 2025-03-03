# Data structures
# Lists
this_list = ["apple", "banana", "cherry"]
print(thislist)
print(thislist[1])

# tuples
my_tuple=(1,2,'hola',[2,3])
print(my_tuple)
print(my_tuple[2])

# dictionaries
this_dict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
print(this_dict)
print(this_dict["model"])

# sets
my_set= {1,2,3,4,5}
other_set = {3, 4, 5, 6, 7}
print(my_set.union(other_set))  # {1, 2, 3, 4, 5, 6, 7}
print(my_set.intersection(other_set)) # {3, 4, 5}
print(my_set.difference(other_set))  # {1, 2}