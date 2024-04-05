import 'package:equatable/equatable.dart';

class CountState extends Equatable{
  final int count;
  const CountState({this.count = 0});




  CountState copyWith({int? count}){
   return CountState(
    count: count ?? this.count
   );
}


  @override
  List<Object?> get props => [count];

}




