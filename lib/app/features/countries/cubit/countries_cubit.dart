import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'countries_state.dart';

class CountriesCubit extends Cubit<CountriesState> {
  CountriesCubit() : super(CountriesInitial());
}
