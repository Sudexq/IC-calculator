//https://m7sm4-2iaaa-aaaab-qabra-cai.raw.ic0.app/?tag=1295363464
//calculator
//variables (let -> immutable, var -> mutable)

//canister => akıllı sözleşme

actor _calculator {
  var _cell : Int = 0;

  //summation
  public func sum(_s : Int) : async Int {
    _cell += _s;
    _cell
    //(Debug.print(debug_show(_cell));)
  };

  //subtraction
  public func sub(_s : Int) : async Int {
    _cell -= _s;
    _cell;
  };

  //multiplication
  public func multi(_s : Int) : async Int {
    _cell *= _s;
    _cell;
  };

  //division
  public func div(_s : Int) : async ?Int {
    // ? for zero and float etc.
    if (_s == 0) {
      null;
    } else {
      _cell /= _s;
      ?_cell // ? for zero and float etc.
    };
  };

  //cleaning
  public func clean() : async () {
    _cell := 0;
  };

};
