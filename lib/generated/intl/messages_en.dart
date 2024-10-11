// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appName": MessageLookupByLibrary.simpleMessage("Freegi"),
        "labelOverviewHeader1":
            MessageLookupByLibrary.simpleMessage("Select your Items to Buy"),
        "labelOverviewHeader2": MessageLookupByLibrary.simpleMessage(
            "Order item from your Shopping Bag"),
        "labelOverviewHeader3": MessageLookupByLibrary.simpleMessage(
            "Our System Delivery Item to you"),
        "labelOverviewText1": MessageLookupByLibrary.simpleMessage(
            "Pick the  Items you want and add them to your Shopping Cart."),
        "labelOverviewText2": MessageLookupByLibrary.simpleMessage(
            "Complete your purchase by checking out and providing payment information for the items in your shopping bag."),
        "labelOverviewText3": MessageLookupByLibrary.simpleMessage(
            "Once your order is processed, our system will deliver the item(s) to you according to the selected delivery method.")
      };
}
