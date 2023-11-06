import time

def execution_time(func):
    def wrapper(*args, **kwargs):
        start_time = time.time() 
        result = func(*args, **kwargs)
        end_time = time.time()
        duration = end_time - start_time
        print(f"Функция {func.__name__} выполнялась {duration} секунд")
        return result
    return wrapper


@execution_time
def primer():
    a,b,c=int(input()),int(input()),int(input())
    print(max(a,b,c))
    print((a+b+c)-(max(a,b,c)+min(a,b,c)))
    print(min(a,b,c))

primer()