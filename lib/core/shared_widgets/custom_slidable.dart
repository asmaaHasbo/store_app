import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
class CustomSlidable extends StatelessWidget {
  CustomSlidable({super.key  , required this.slidableChild ,
    // required this.docId,
    // required this.collectionName,
  });

  Widget slidableChild ;
//   String docId;
// CollectionReference collectionName;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      closeOnScroll: true,
      endActionPane: ActionPane(
        motion: const StretchMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              // collectionName.doc(docId)
              //     .delete()
              //     .then((value) => print("product Deleted"))
              //     .catchError((error) => print("Failed to delete product: $error"));

              },
            backgroundColor: Colors.red,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: slidableChild
    );
  }
}
