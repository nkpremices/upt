from upt.global_vars import Database as db
import pymysql.cursors
import zerorpc

class RPC(object):
    # Connect to the database
    connection = pymysql.connect(host=db.host, user=db.db_user, password='root', db=db.db_name, charset='utf8mb4',
                                 cursorclass=pymysql.cursors.DictCursor)
    result = ""

    try:
        with connection.cursor() as cursor:
            # Read a single record
            sql = "SELECT * FROM `django_migrations`"
            cursor.execute(sql)
            result = cursor.fetchall()
    finally:
        connection.close()

    def data_to_send(self):
        print(type())
        return str(self.result)

out = zerorpc.Server(RPC())
out.bind("tcp://0.0.0.0:4242")
out.run()