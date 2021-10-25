import 'package:country_list_pick/support/code_countries_en.dart';
import 'package:country_list_pick/support/code_country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:phone_number/phone_number.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

/// List of all available countries in package country_list_pick
final countriesList = countriesEnglish
    .map(
      (s) => CountryCode(
        name: s['name'],
        code: s['code'],
        dialCode: s['dial_code'],
        flagUri: 'flags/${(s['code'] as String).toLowerCase()}.png',
      ),
    )
    .toList();

/// Widget that
class PhoneInputWidget extends StatefulWidget {
  const PhoneInputWidget({
    Key? key,
    this.selected,
    this.defaultDialCountryCode = '+254',
    required this.verifyFunction,
  }) : super(key: key);

  final CountryCode? selected;
  final String defaultDialCountryCode;
  final Function(String) verifyFunction;

  @override
  _PhoneInputWidgetState createState() => _PhoneInputWidgetState();
}

class _PhoneInputWidgetState extends State<PhoneInputWidget> {
  late CountryCode countryCode;
  final phoneFocusNode = FocusNode();
  final phoneTEC = TextEditingController();
  bool isTypingCountry = false;

  @override
  void initState() {
    if (widget.selected == null) {
      countryCode = countriesList.firstWhere(
        (element) => element.dialCode == widget.defaultDialCountryCode,
        orElse: () => throw Exception(
          '${widget.defaultDialCountryCode} not in list of selected countries',
        ),
      );
    } else {
      countryCode = widget.selected!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(8);
    const style = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
    );
    const toPad = 65.0;

    return SizedBox(
      height: 120,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey, width: 2),
              borderRadius: const BorderRadius.all(radius),
            ),
            clipBehavior: Clip.antiAlias,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isTypingCountry = !isTypingCountry;
                      });
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: radius,
                          bottomLeft: radius,
                        ),
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            countryCode.flagUri!,
                            package: 'country_list_pick',
                            width: 30,
                            alignment: Alignment.center,
                          ),
                          // if(isTypingCountry)
                          Icon(
                            isTypingCountry
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                            size: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: TextField(
                    // name: 'user_phone_number',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          letterSpacing: 1,
                        ),
                    focusNode: phoneFocusNode,
                    autofocus: true,
                    controller: phoneTEC,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Phone number*',
                      contentPadding: const EdgeInsets.all(8.0),
                      prefixText: '${countryCode.dialCode!} \t',
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onEditingComplete: () {
                      FocusScope.of(context).unfocus();
                      validate();
                    },
                  ),
                )
              ],
            ),
          ),
          if (isTypingCountry)
            Padding(
              padding: const EdgeInsets.only(
                top: toPad,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isTypingCountry = !isTypingCountry;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(radius),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                    ),
                    child: TypeAheadField<CountryCode>(
                      textFieldConfiguration: TextFieldConfiguration(
                        autofocus: true,
                        style: DefaultTextStyle.of(context)
                            .style
                            .copyWith(fontSize: 16),
                        decoration: InputDecoration(
                          hintText: 'Choose your country',
                          hintStyle: style,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.blue[400],
                          ),
                        ),
                      ),
                      suggestionsCallback: (pattern) {
                        return countriesList.where(
                          (country) => country.name!
                              .toLowerCase()
                              .contains(pattern.toLowerCase()),
                        );
                      },
                      itemBuilder: (context, CountryCode country) {
                        final name = '${country.name!}\t(${country.dialCode})';
                        return Container(
                          margin: const EdgeInsets.all(8.0),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 0.5,
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(4.0),
                                child: Image.asset(
                                  country.flagUri!,
                                  package: 'country_list_pick',
                                  width: 25,
                                  alignment: Alignment.center,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    name,
                                    style: style.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: Adaptive.sp(16),
                                    ),
                                    overflow: TextOverflow.clip,
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                              if (countryCode == country)
                                const Padding(
                                  padding: EdgeInsets.only(right: 8.0),
                                  child: Icon(Icons.check, size: 16),
                                )
                            ],
                          ),
                        );
                      },
                      onSuggestionSelected: (suggestion) {
                        setState(() {
                          countryCode = suggestion;
                          isTypingCountry = !isTypingCountry;
                          FocusScope.of(context).requestFocus(phoneFocusNode);
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
          const SizedBox(height: 16),
          Padding(
            padding:
                EdgeInsets.only(top: (isTypingCountry ? toPad : 0.0) + 75.0),
            child: ElevatedButton.icon(
              onPressed: validate,
              icon: const Icon(Icons.keyboard_arrow_right),
              label: const Text('Log in with phone'),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> validate() async {
    final toValidate = countryCode.dialCode! + phoneTEC.text;
    final phoneValidatorUtil = PhoneNumberUtil();
    try {
      final parsedPhoneNumber = await phoneValidatorUtil.parse(
        toValidate,
        regionCode: countryCode.dialCode,
      );

      final isValid = await phoneValidatorUtil.validate(
        toValidate,
        countryCode.code!,
      );

      if (isValid) {
        widget.verifyFunction(parsedPhoneNumber.international);
      } else {}
    } catch (e) {
      _showInvalidPhone();
    }
  }

  void _showInvalidPhone() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: const [
            Icon(Icons.info),
            SizedBox(width: 8),
            Expanded(
              child: Text('Please enter a valid phone number'),
            ),
          ],
        ),
      ),
    );
  }
}
