from collections import deque
from timeit import timeit

def create_list(n):
    my_list = list()
    for i in range(n):
        my_list.append(i)
    return my_list

def delete_from_list(mylist):
    for i in range(len(mylist)):
        mylist.pop()
    return mylist

def ext_my_list(mylist):
    for i in range(len(mylist)):
        mylist.extend([i])
    return mylist

def create_deque(n):
    my_deque = deque()
    for i in range(n):
        my_deque.append(i)
    return my_deque

def delete_from_deque(mydeque):
    for i in range(len(mydeque)):
        mydeque.pop()
    return mydeque

def ext_my_deque(mydeque):
    for i in range(len(mydeque)):
        mydeque.extend([['a', 'b', 'c', 'd']])
    return mydeque

def edit_deque(mydeque: deque):
    for i in set('qwertyuiop'):
        mydeque.appendleft(i)
        mydeque.extendleft(['a', 'b', 'c', 'd'])
        mydeque.popleft()
    return mydeque

def edit_list(mylist: list):
    for i in set('qwertyuiop'):
        mylist.insert(0, i)
        mylist.insert(0, ['a', 'b', 'c', 'd'])
        mylist.pop(0)
    return mylist

def get_element_list(mylist):
    for i in range(len(mylist)):
        tmp = mylist[i]

def get_element_deque(mydeque):
    for i in range(len(mydeque)):
        tmp = mydeque[i]

my_deq = create_deque(100)
my_list = create_list(100)

print(f"append() to list: {timeit(stmt='create_list(n)', setup='n=1000', globals=globals(), number=1000)}")
print(f"append() to deque: {timeit(stmt='create_deque(n)', setup='n=1000', globals=globals(), number=1000)}")
print(f"pop() from list: {timeit(stmt='delete_from_list(mylist)', setup='mylist=my_list', globals=globals(), number=1000)}")
print(f"pop() from deque: {timeit(stmt='delete_from_deque(mydeque)', setup='mydeque=my_deq', globals=globals(), number=1000)}")
print(f"extend() list: {timeit(stmt='ext_my_list(mylist)', setup='mylist=my_list', globals=globals(), number=1000)}")
print(f"extend() deque: {timeit(stmt='ext_my_deque(mydeque)', setup='mydeque=my_deq', globals=globals(), number=1000)}")
print(f"insert(0,x), insert(0,[]), pop(0) list: {timeit(stmt='edit_list(mylist)', setup='mylist=my_list', globals=globals(), number=1000)}")
print(f"appendleft(), extendleft(), popleft() deque: {timeit(stmt='edit_deque(mydeque)', setup='mydeque=my_deq', globals=globals(), number=1000)}")
print(f"get element from list: {timeit(stmt='get_element_list(mylist)', setup='mylist=my_list', globals=globals(), number=1000)}")
print(f"get element from deque: {timeit(stmt='get_element_deque(mydeque)', setup='mydeque=my_deq', globals=globals(), number=1000)}")


"""
append() to list: 0.03669232899846975
append() to deque: 0.0330176549978205
pop() from list: 0.00013359599688556045
pop() from deque: 0.00013135899644112214
extend() list: 0.00013132900494383648
extend() deque: 0.00011702399933710694
insert(0,x), insert(0,[]), pop(0) list: 0.03339588500239188
appendleft(), extendleft(), popleft() deque: 0.0016846799990162253
get element from list: 0.20400943300046492
get element from deque: 8.778565927997988
??????????: ???????????????? ???????????????? ???????????????????????????? ???????????????? ?????????????? ?????????????????????? ?? ????????,
?????????????????????? ?????????????????? ?????????????????????? ???????????????? ?????????????????? ???????????????? ???????? (8 ?????? ???????????? 0.2 ?????? ?????? ????????????)
"""