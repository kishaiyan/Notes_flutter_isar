// import 'package:flutter/material.dart';

// class NoteTile extends StatelessWidget {
//   final String text;
//   final void Function()? onEditPressed;
//   final void Function()? onDeletePressed;
//   const NoteTile(
//       {super.key,
//       required this.text,
//       required this.onEditPressed,
//       required this.onDeletePressed});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         decoration: BoxDecoration(
//             color: Theme.of(context).colorScheme.background,
//             borderRadius: BorderRadius.circular(10)),
//         child: ListTile(
//           title: Text(text),
//           trailing: Row(
//             children: [
//               IconButton(
//                   onPressed: onEditPressed, icon: const Icon(Icons.edit)),
//               IconButton(
//                   onPressed: onDeletePressed, icon: const Icon(Icons.delete)),
//             ],
//           ),
//         ));
//   }
// }
