import 'dart:math';

void main(){
var random = Random();
random.nextDouble(); // Between 0.0 and 1.0: [0, 1)
random.nextInt(10); // Between 0 and 9.

var random2 = Random();
random.nextBool(); // true or false
}