import 'dart:async';
import 'dart:core';

void runUsingFuture() {
  // ...
  var flushThenExit;
  var args;
  findEntryPoint().then((entryPoint) {
    return runExecutable(entryPoint, args);
  }).then(flushThenExit);
}

void runExecutable(entryPoint, args) {}

findEntryPoint() {}

// Future<void> runUsingAsyncAwait() async {
//   // ...
//   var entryPoint = await findEntryPoint();
//   var exitCode = await runExecutable(entryPoint, args);
//   await flushThenExit(exitCode);
// }

// var entryPoint = await findEntryPoint();
// try {
//   var exitCode = await runExecutable(entryPoint, args);
//   await flushThenExit(exitCode);
// } catch (e) {
//   // Handle the error...
// }


// HttpRequest.getString(url).then((String result) {
//   print(result);
// });


// HttpRequest.getString(url).then((String result) {
//   print(result);
// }).catchError((e) {
//   // Handle or ignore the error.
// });


// Future result = costlyQuery(url);
// result
//     .then((value) => expensiveWork(value))
//     .then((_) => lengthyComputation())
//     .then((_) => print('Done!'))
//     .catchError((exception) {
//   /* Handle exception... */
// });

// try {
//   final value = await costlyQuery(url);
//   await expensiveWork(value);
//   await lengthyComputation();
//   print('Done!');
// } catch (e) {
//   /* Handle exception... */
// }


// Future<void> deleteLotsOfFiles() async =>  ...
// Future<void> copyLotsOfFiles() async =>  ...
// Future<void> checksumLotsOfOtherFiles() async =>  ...

// await Future.wait([
//   deleteLotsOfFiles(),
//   copyLotsOfFiles(),
//   checksumLotsOfOtherFiles(),
// ]);
// print('Done with all the long steps!');