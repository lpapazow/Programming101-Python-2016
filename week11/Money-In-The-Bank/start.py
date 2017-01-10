import sql_manager
import sql_manage_queries
import getpass
import hashlib
import smtplib


def main_menu():
    print("Welcome to our bank service. You are not logged in. \nPlease register or login")

    while True:
        command = input("$$$>")

        if command == 'register':
            username = input("Enter your username: ")
            password = set_password()

            sql_manager.register(username, password)

            print("Registration Successfull")

        elif command == 'login':
            username = input("Enter your username: ")
            password = input_password(username)

            logged_user = sql_manager.login(username, password)

            if logged_user:
                logged_menu(logged_user)
            else:
                print("Login failed")

        elif command == 'help':
            print("login - for logging in!")
            print("register - for creating new account!")
            print("exit - for closing program!")

        elif command == 'exit':
            break
            
        elif "send-reset-password" in command:
            user_email = sql_manager.show_email()
            send_mail(user)
            
        
        elif "reset-password" in command:
            
        
        else:
            print("Not a valid command")
            
def send_mail(user):
    server = smtplib.SMTP('smtp.gmail.com', '587', 'localhost')

            
def validate_password(func):
    def inner(username):
        if not validaors.pass_is_valid(paswword, username):
            inner(username)
        return input_password(username)
    return func(username)


def hash_password(func):
    def inner(*args)
        valid_pass = set_password(*args)
        hash_pass = hashlib.sha256(result).hexdigest()
        return hash_pass
    return inner   

@validate_password
@hash_password
def set_password(username):
    return getpass.getpass("Enter your password: ")

@hash_password
def input_password():
    return getpass.getpass("Enter your password: ")


def logged_menu(logged_user):
    print("Welcome you are logged in as: " + logged_user.get_username())
    while True:
        command = input("Logged>>")

        if command == 'info':
            print("You are: " + logged_user.get_username())
            print("Your id is: " + str(logged_user.get_id()))
            print("Your balance is:" + str(logged_user.get_balance()) + '$')

        elif command == 'changepass':
            new_pass = input("Enter your new password: ")
            sql_manager.change_pass(new_pass, logged_user)

        elif command == 'change-message':
            new_message = input("Enter your new message: ")
            sql_manager.change_message(new_message, logged_user)

        elif command == 'show-message':
            print(logged_user.get_message())

        elif command == 'help':
            print("info - for showing account info")
            print("changepass - for changing passowrd")
            print("change-message - for changing users message")
            print("show-message - for showing users message")


def main():
    sql_manager.create_clients_table()
    main_menu()

if __name__ == '__main__':
    main()
