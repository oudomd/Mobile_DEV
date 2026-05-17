class BankAccount {
  int id;
  String owner;
  double _balance = 0;
 
  BankAccount(this.id, this.owner);
 
  double get balance => _balance;
 
  void credit(double amount) => _balance += amount;
 
  void withdraw(double amount) {
    if (amount > _balance) throw Exception('Insufficient balance for withdrawal!');
    _balance -= amount;
  }
}
 
class Bank {
  String name;
  final List<BankAccount> _accounts = [];
 
  Bank({required this.name});
 
  BankAccount createAccount(int accountId, String accountOwner) {
    if (_accounts.any((a) => a.id == accountId)) {
      throw Exception('Account with ID $accountId already exists!');
    }
    final account = BankAccount(accountId, accountOwner);
    _accounts.add(account);
    return account;
  }
}

void main() {
  Bank myBank = Bank(name: "CADT Bank");
  BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');

  print(ronanAccount.balance); // Balance: $0
  ronanAccount.credit(100);
  print(ronanAccount.balance); // Balance: $100
  ronanAccount.withdraw(50);
  print(ronanAccount.balance); // Balance: $50

  try {
    ronanAccount.withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  try {
    myBank.createAccount(100, 'Honlgy'); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }
}
