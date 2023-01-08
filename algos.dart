locate_card (List cards, int query){
  int lo = 0;
  int hi = cards.length - 1;
  //print('$lo  $hi');
  if (lo <= hi) {
    while (lo <= hi) {
    //print('hello');
      var mid = (lo + hi) ~/ 2;
      var mid_number = cards[mid];

      //print("lo:$lo ,hi:$hi, mid:$mid, mid_number:$mid_number");

      if (mid_number == query){
        return mid;
      } else if (mid_number < query) {
        hi = mid - 1;
      } else if (mid_number > query) {
        lo = mid + 1;
      };
    };
    } else {
    return -1;
  };
}

testlocation (cards, query, mid) {
  if (cards[mid]== query){
    if (mid-1 >= 0 && cards[mid - 1] == query){
      return 'left';
    } else {
      return 'found';
    }
  } else if (cards[mid] < query){
    return 'left';
  } else {
    return 'right';
  }
}

locate_card_new (List cards, int query) {
  int lo= 0;
  int hi =  cards.length - 1;
  if (lo <= hi) {
    while (lo <= hi) {
      var mid = (lo +hi) ~/ 2;
      var result = testlocation(cards, query, mid);
      if (result == 'found') {
        return mid;
      } else if (result == 'left') {
        hi = mid - 1;
      } else if (result == 'right'){
        lo = mid + 1;
      }
    }
    return -1; //If found error will remove this.
  } else{
    return -1;
  }
}