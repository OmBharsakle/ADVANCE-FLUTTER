import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../modelClass/modelClass.dart';
import '../provider/quotesProvider.dart';

class QuotesHomepage extends StatelessWidget {
  const QuotesHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    QuotesProvider QuotesProviderTrue =
    Provider.of<QuotesProvider>(context, listen: true);
    QuotesProvider QuotesProviderFalse =
    Provider.of<QuotesProvider>(context, listen: false);
    QuotesProviderFalse.quotesAddingJsonFile(quotes);
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
      ),
      body: ListView.builder(itemCount: 100,itemBuilder: (context, index) => Card(
        child: ListTile(
          leading: Text(
              '${index + 1}',style: TextStyle(fontSize: 18),),
          title: Text(QuotesProviderTrue.quotesAddingList[index]["quote"]),
          subtitle: Text(QuotesProviderTrue.quotesAddingList[index]["author"]),
          trailing: IconButton(onPressed: () {
            QuotesProviderFalse.provideRemove(index);
          },icon: Icon(Icons.delete),),
        ),
      ),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          TextEditingController txtQuotes = TextEditingController();
          TextEditingController txtAuthor = TextEditingController();
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text(
                'Add New Quote',
                style: TextStyle(color: Colors.black),
              ),
              content: Container(

                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        style: const TextStyle(color: Colors.black),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field Must be Required !';
                          }
                          return null;
                        },
                        controller: txtQuotes,
                        decoration: InputDecoration(
                            label: Text('Quote'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ))),
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        style: const TextStyle(color: Colors.black),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field Must be Required !';
                          }
                          return null;
                        },
                        controller: txtAuthor,
                        decoration: InputDecoration(
                            label: Text('Author'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ))),
                      ),
                    ],
                  ),
                ),
              ),
              actions: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel',
                        style: TextStyle(color: Colors.blue))),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pop(context);
                        QuotesProviderFalse.addUserList(QuotesModal(quote: txtQuotes.text.toString(),author: txtAuthor.text.toString()));
                      }
                    },
                    child: const Text(
                      'OK',
                      style: TextStyle(color: Colors.blue),
                    )),
              ],
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

GlobalKey<FormState> formKey = GlobalKey();