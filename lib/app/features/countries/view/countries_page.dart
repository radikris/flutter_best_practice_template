import 'dart:ui';

import 'package:best_practice_template/app/features/countries/cubit/countries_cubit.dart';
import 'package:best_practice_template/app/features/countries/domain/models/country/country.dart';
import 'package:best_practice_template/app/features/countries/domain/models/country_state/country_state.dart';
import 'package:best_practice_template/app/features/countries/view/widgets/dropdown.dart';
import 'package:best_practice_template/common/widgets/app_loading.dart';
import 'package:best_practice_template/theme/app_dimen.dart';
import 'package:best_practice_template/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountriesPage extends StatelessWidget {
  const CountriesPage({super.key});

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
              child: const FlutterLogo(),
            ),
            Center(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    padding: AppDimen.edge16,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200.withOpacity(0.5),
                    ),
                    child: const SizedBox(),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                state.when(
                  initial: () {
                    return const Text('initial');
                  },
                  loading: () {
                    return const AppLoading();
                  },
                  error: (error) {
                    return Text(error);
                  },
                  success: (success) {
                    final stateData = state.dataOrNull!;
                    return Padding(
                      padding: AppDimen.edge16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DropDownList<Country>(
                            title: 'Select your country',
                            initialValue: stateData.selectedCountry,
                            options: success.countries,
                            formatValue: (value) => value.value,
                            onSelect: cubit.selectCountry,
                          ),
                          SizedBox(
                            height: AppDimen.h16,
                          ),
                          if (stateData.selectedCountry != null)
                            stateData.countryStates.isNotEmpty
                                ? DropDownList<CountryState>(
                                    title:
                                        'Select your country state for ${stateData.selectedCountry!.value}',
                                    initialValue:
                                        state.dataOrNull!.selectedCountryState,
                                    options: success.countryStates,
                                    formatValue: (value) => value.value,
                                    onSelect: cubit.selectCountryState,
                                  )
                                : Center(
                                    child: Text(
                                      'Found no countrystates for ${stateData.selectedCountry!.value}',
                                      style: TextStyles.bold14,
                                    ),
                                  ),
                          if (stateData.selectedCountry != null &&
                              stateData.selectedCountryState != null) ...[
                            SizedBox(
                              height: AppDimen.h32,
                            ),
                            Text(
                              'You selected: ${stateData.selectedCountry!.value} - ${stateData.selectedCountryState!.value}',
                            ),
                          ]
                        ],
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
