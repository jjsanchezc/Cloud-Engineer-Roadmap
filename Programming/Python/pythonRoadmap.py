import data_structures_and_algor as ds
import modules as md
class python_basics:
    global_var = 20
    bool_var = False

    def __init__(self):
        print("Python Basics")
        global_var = 30

    def basics(self):
        print("Python Basics")
        local_var = 10
        print(f"local var: {local_var}")
        print(f"global_var: {self.global_var}")

    def variables(self):
        self.int_var = 10
        float_var = 10.5
        str_var = "Python"
        self.bool_var = True
        print(f"int: {self.int_var}, float: {float_var}, str: {str_var}, bool: {self.bool_var}")

    def conditionals(self):
        if self.bool_var:
            print("True")

    def loops(self):
        cont = 5
        for i in range(cont):
            print(i)
        while cont > 0:
            cont -= 1
            print(cont)

    def exceptions(self):
        try:
            print(1/0)
        except ZeroDivisionError:
            print("Division by zero")

    def lists(self):
        list_var = [1, 2, 3, 4, 5]
        print(list_var)
        list_var.append(6)
        print(list_var)
        list_var.pop(0)
        print(list_var)
    def tuples(self): # collection of objects, inmutable
        tuple_var = (1, 2, 3, 4, 5)
        print(tuple_var)
        print(tuple_var[0])
        print(tuple_var[1:3])
    def dictionaries(self): # key-value pairs
        dict_var = {"key1": 1, "key2": 2}
        print(dict_var)
        print(dict_var["key1"])
        dict_var["key3"] = 3
        print(dict_var)
        del dict_var["key1"]
        print(dict_var)
    def sets(self): # collection of unique elements
        set_var = {1, 2, 3, 4, 5}
        print(set_var)
        set_var.add(6)
        print(set_var)
        set_var.remove(1)
        print(set_var)


def main():
    obj_ds=ds.data_structures_and_algorithms()
    obj_ds.arrays()
    obj_ds.linked_list()
    obj_ds.recursion(5)
    obj = python_basics()
    obj.basics()


if __name__ == "__main__":
    main()
