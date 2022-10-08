import 'dart:ui';

import 'package:best_practice_template/app/features/countries/cubit/countries_cubit.dart';
import 'package:best_practice_template/app/features/countries/domain/models/country/country.dart';
import 'package:best_practice_template/app/features/countries/view/widgets/dropdown.dart';
import 'package:best_practice_template/theme/app_dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountriesPage extends StatelessWidget {
  const CountriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CountriesCubit>().state;
    final cubit = context.read<CountriesCubit>();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            ConstrainedBox(
                constraints: const BoxConstraints.expand(),
                child: FlutterLogo()),
            Center(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      padding: AppDimen.edge16,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200.withOpacity(0.5)),
                      child: SizedBox()),
                ),
              ),
            ),
            Padding(
              padding: AppDimen.edgeh16,
              child: Column(
                children: [
                  state.when(initial: () {
                    return Text('initial');
                  }, loading: () {
                    return CircularProgressIndicator();
                  }, error: (error) {
                    return Text(error);
                  }, success: (success) {
                    return DropDownList<Country>(
                      title: 'Select your country',
                      initialValue: state.dataOrNull?.selectedCountry,
                      options: success.countries,
                      formatValue: (value) => value.value,
                      onSelect: (value) {
                        cubit.selectCountry(value);
                      },
                    );
                  }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
