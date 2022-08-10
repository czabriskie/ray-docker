import ray

@ray.remote
def square_num(num):
    return num**2


ray.init(dashboard_host="0.0.0.0", dashboard_port=6379, runtime_env={"working_dir": "./src/"})

nums = range(100)

squares = [square_num.remote(x) for x in nums]

print(ray.get(squares))