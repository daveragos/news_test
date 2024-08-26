import 'package:filter_list/filter_list.dart';
import 'package:flutter/material.dart';
import 'package:news_test/utils/konstants.dart';
import 'package:news_test/widgets/bordered_icon.dart';
import 'package:news_test/widgets/c_button.dart';
import 'package:news_test/widgets/c_text_field.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final searchText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  //search bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BorderedIcon(icon: Icons.arrow_back),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: KTextField(
                            textController: searchText,
                            icon: Icons.search,
                            obscure: false,
                            hint: 'Search "News"'),
                      )
                    ],
                  ),
                  //filters with "add filter" button
                ],
              ))),
    );
  }
}

class CustomFilter extends StatefulWidget {
  const CustomFilter({super.key});

  @override
  State<CustomFilter> createState() => _CustomFilterState();
}

class _CustomFilterState extends State<CustomFilter> {
  List<String> selectedFilters = Konstants().selectedFilters;
  List<String> category = Konstants().category;
  List<String> location = Konstants().location;
  @override
  Widget build(BuildContext context) {
    return FilterListWidget(
        applyButtonText: 'DONE',
        controlButtons: [ControlButtonType.Reset],
        hideSearchField: true,
        hideHeader: true,
        choiceChipBuilder: (context, item, isSelected) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: KElevatedButton(
                text: item.toString(),
                bg: Konstants().kContainerColor,
                onPressed: () {
                  setState(() {
                    if (!selectedFilters.contains(item)) {
                      selectedFilters.add(item);
                    } else {
                      selectedFilters.remove(item);
                    }
                  });
                },
                borderColor: isSelected! ? Colors.blue : Colors.black,
                fg: isSelected ? Colors.black : Konstants().kGrey),
          );
        },
        selectedItemsText: '',
        listData: [...category, ...location],
        selectedListData: selectedFilters,
        onApplyButtonClick: (list) {},
        validateSelectedItem: (list, val) {
          return list!.contains(val);
        },
        choiceChipLabel: (item) {
          return item.toString();
        },
        onItemSearch: (type, query) {
          return type.toString().toLowerCase().contains(query.toLowerCase());
        });
  }
}
