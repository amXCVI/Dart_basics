class User {
  String email = "";
  void setEmail(String mail) {
    email = mail;
  }
}

class AdminUser extends User with UserMixin{
  bool isAdmin = false;
  void setAdmin() {
    isAdmin = true;
  }

}

class GeneralUser extends User {

}

mixin UserMixin on User {
  String getMailSystem() {
    return(email.substring(email.indexOf('@') + 1));
  }
}

class UserManager<T extends User> {
  List<AdminUser> usersList = [];

  void addUser(String mail) {
    AdminUser newUser = AdminUser();
    newUser.setEmail(mail);
    usersList.add(newUser);
  }

  void deleteUser(String mail) {
    int indexOf = usersList.indexOf(usersList.firstWhere((element) => element.email == mail));
    usersList.removeAt(indexOf);
  }

  void printAllEmails() {
    usersList.forEach((element) {
      if (element.isAdmin) {
        print(element.getMailSystem());
      } else {
        print(element.email);
      }
    });
  }
}