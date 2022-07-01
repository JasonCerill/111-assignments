import requests


URL = "http://127.0.0.1:5000/users"


def delete_user(id):
    response = requests.delete(f"{URL}/{id}")
    if response.status_code == 204:
        print("User deleted!")
    else:
        print("Error:  User was not deleted")


if __name__ ==
