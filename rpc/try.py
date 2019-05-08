
a = "{'id': 1, 'app': 'contenttypes', 'name': '0001_initial', 'applied': datetime.datetime(2018, 12, 31, 15, 32, 49, 479598)}, {'id': 2, 'app': 'auth', 'name': '0001_initial', 'applied': datetime.datetime(2018, 12, 31, 15, 33, 1, 81967)}"
b = a.split(", {")
print(type(b))
