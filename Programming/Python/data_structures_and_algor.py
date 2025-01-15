import array as arr
from collections import deque


class data_structures_and_algorithms:

    def __init__(self):
        pass

    def arrays(self):
        # i reference the data type of the array
        a = arr.array('i', [1, 2, 3, 4, 5])
        a.append(6)
        # a.append([2,2,2,2,2]) #Add the list as a single element
        a.extend([3, 4, 4])  # Add each element of the list
        print(f'arrays: {a[1]}, len {len(a)}')

    def linked_list(self):
        queue = deque()
        queue.append('jj')
        queue.append('mj')
        print(f'first queue: {queue}')

        queue.appendleft('jm')
        print(f'queueAppendLeft: {queue}')

        queue.popleft()
        print(f'queuePopleft: {queue}')

    def heap(self):
       """
       a tree based data structure in wich the value of a parent
       node is ordered in a certain way with respect the value of its child node
       O(log n)
       """
       pass

    def recursion(self,n:int):
       if n==0:
              print('recusrion done')
              return 1
       return self.recursion(n-1)
       