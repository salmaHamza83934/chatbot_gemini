import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../cubit/message_cubit.dart';

class MessageFormField extends StatefulWidget {
  @override
  State<MessageFormField> createState() => _MessageFormFieldState();
}

class _MessageFormFieldState extends State<MessageFormField> {
  var formKey = GlobalKey<FormState>();
  var messageController = TextEditingController();
  String? imagePath; // To store the selected image path

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SizedBox(
            //height: 80.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 280.w,
                  child: TextFormField(
                    maxLines: null,
                    minLines: 1,
                    keyboardType: TextInputType.multiline,
                    controller: messageController,
                    decoration: InputDecoration(
                      prefixIcon: imagePath != null
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              // Add some padding for aesthetics
                              child: Stack(
                                children: [
                                  Image.file(
                                    File(imagePath!),
                                    fit: BoxFit.cover,
                                    height: 80.h, // Adjust the height as needed
                                    width: 80.h, // Adjust the width as needed
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        imagePath = null;
                                        setState(() {});
                                      },
                                      child: Icon(
                                        Icons.close_rounded,
                                        color: Colors.red.shade800,
                                      ))
                                ],
                              ),
                            )
                          : IconButton(
                              icon: Icon(
                                Icons.image_outlined,
                                color: Colors.cyan.shade500,
                                size: 30.r,
                              ),
                              onPressed: () async {
                                await _pickImage();
                              },
                            ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.cyan.shade500, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(15.r)),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.red.shade900, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(15.r)),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.red.shade900, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(15.r)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.cyan.shade800, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(15.r)),
                      ),
                      hintText: 'Type a message',
                      hintStyle: AppTextStyles.font15quicksand,
                      errorStyle: const TextStyle(
                        fontSize: 0,
                        height: 0,
                        color: Colors.transparent, // Make the text transparent
                      ),
                    ),
                    validator: (text) {
                      if (text == null ||
                          text.trim().isEmpty && imagePath == null) {
                        return '';
                      }
                      return null;
                    },
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    if (formKey.currentState!.validate() || imagePath != null) {
                      // Send both message text and the image (if selected)
                      MessageCubit.get(context).sendMessage(
                          messageController.text, 'user', imagePath);
                      messageController.clear();
                      imagePath = null;
                      setState(() {});
                    }
                  },
                  child: Container(
                    height: 60.h,
                    width: 60.w,
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: <Color>[
                          Color(0xFFFAE4D5),
                          Color(0xFFA5E4EB),
                          Color(0xFF5BDAE3),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: const Icon(
                      Icons.send_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        imagePath = image.path; // Store the path of the selected image
      });
    }
  }
}
