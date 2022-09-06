import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'chat_viewmodel/amity_viewmodel.dart';
import 'chat_viewmodel/channel_list_viewmodel.dart';
import 'chat_viewmodel/custom_image_picker.dart';
import 'chat_viewmodel/user_viewmodel.dart';

class AmitySLEUIKit {
  Future<void> initUIKit() async {}

  Future<void> registerDevice() async {}
}

class AmitySLEProvider extends StatelessWidget {
  final Widget child;
  const AmitySLEProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserVM>(create: ((context) => UserVM())),
        ChangeNotifierProvider<AmityVM>(create: ((context) => AmityVM())),
        ChangeNotifierProvider<ImagePickerVM>(
            create: ((context) => ImagePickerVM())),
        ChangeNotifierProvider<ChannelVM>(create: ((context) => ChannelVM())),
      ],
      child: child,
    );
  }
}
