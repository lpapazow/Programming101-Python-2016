class Client():
    def __init__(self, id, username, password=None, balance=None, message=None, email=None):
        self.__username = username
        self.__balance = balance
        self.__passwrod = password
        self.__id = id
        self.__message = message
        self.__email = email

    def get_username(self):
        return self.__username

    def get_balance(self):
        return self.__balance

    def get_id(self):
        return self.__id

    def get_message(self):
        return self.__message

    def set_message(self, new_message):
        self.__message = new_message
        
    def get_email(self):
        return self.__email
    
    def get_password(self):
        return self.__password
