import Debug "mo:base/Debug";

actor DBank {
  stable var currentValue = 300;
  currentValue := 100;
  let id = 349394394934;

  public func topUp(amount : Nat) {
    currentValue += amount;
    Debug.print(debug_show (currentValue));
  };

  public func withDraw(amount : Nat) {
    let temp : Int = currentValue - amount;
    if (temp >= 0) {
      currentValue -= amount;
      Debug.print(debug_show (currentValue));
    } else {
      Debug.print("no more balance");
    };

  };

  public query func checkBalance() : async Nat {
    return currentValue;
  };
};
