edgecases ([edgecasenumber = null]) { //Square brackets are used for optional
  List tests = [];                    // arguments which have some deafult value.
  var edge1 = {'input': {
        'cards': [13, 11, 10, 7, 4, 3, 1, 0],
        'query': 1
    }, 'output': 6};
  var edge2 = {
    'input': {
        'cards': [4, 2, 1, -1],
        'query': 4
    },
    'output': 0};
  var edge3 = {
    'input': {
        'cards': [3, -1, -9, -127],
        'query': -127
    },
    'output': 3};
  var edge4 = {
    'input': {
        'cards': [6],
        'query': 6
    },
    'output': 0 };
  var edge5 = {
    'input': {
        'cards': [9, 7, 5, 2, -9],
        'query': 4
    },
    'output': -1};
  var edge6 = {
    'input': {
        'cards': [],
        'query': 7
    },
    'output': -1};
  var edge7 = {
    'input': {
        'cards': [8, 8, 6, 6, 6, 6, 6, 3, 2, 2, 2, 0, 0, 0],
        'query': 3
    },
    'output': 7};
  var edge8 = {
    'input': {
        'cards': [8, 8, 6, 6, 6, 6, 6, 6, 3, 2, 2, 2, 0, 0, 0],
        'query': 6
    },
    'output': 2};
  tests.addAll([edge1, edge2, edge3, edge4, edge5, edge6, edge7, edge8]);
  if (edgecasenumber == null){
    return 'Null type object coud not be found.';
  } else {
     return tests.elementAt(edgecasenumber); // Indexing in dart also starts with 0.
  }
}