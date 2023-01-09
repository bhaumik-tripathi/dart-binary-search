import 'edgecases.dart';
import 'algos.dart';
main () {
  int passed = 0;
  int failed = 0;
  for (int edgecasenumber = 0; edgecasenumber<8; edgecasenumber++) {
    var card = edgecases(edgecasenumber)['input']['cards'];
    var query = edgecases(edgecasenumber)['input']['query'];
    var output = locate_card_new(edgecases(edgecasenumber)['input']['cards'], edgecases(edgecasenumber)['input']['query']);
    var actual_ans = edgecases(edgecasenumber)['output'];
    var outcome = output==actual_ans;
    if (outcome) {
      passed++;
    } else {
      failed++;
    }
    print('Edgecase:- $edgecasenumber');
    print("  Cards:- $card");
    print("  Query:- $query");
    print("  Output:- $output");
    print("  Actual answer:- $actual_ans");
    print("  Outcome:- $outcome");
  };
  print('Passed:- $passed , Failed:- $failed');
}