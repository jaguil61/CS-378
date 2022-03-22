// Stores the amount of times an item has been liked
// Can't do pass by reference in dart so this is the next best thing
class CounterNum {
  int _counter;
  CounterNum(this._counter);

  incrementCounter() => _counter++;
  getCounter() => _counter;
}