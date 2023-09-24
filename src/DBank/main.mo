import Debug "mo:base/Debug";

actor DBank {
  var currentValue = 300;
  currentValue := 100;
  let id = 349394394934;

  func topIp() {
    currentValue += 1;
    Debug.print(debug_show (currentValue));
  };
};
