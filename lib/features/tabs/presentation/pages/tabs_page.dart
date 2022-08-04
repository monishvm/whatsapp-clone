import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/features/allchat/presentation/pages/all_chat_page.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 1,
    );
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _tabController,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const KSliverAppBar(),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: const [
              Text('data'),
              AllChatPage(),
              Text('data'),
              Text('data'),
            ],
          ),
        ),
      ),
    );
  }
}

class KSliverAppBar extends StatelessWidget {
  const KSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TabController>(
      builder: (context, controller, child) {
        return SliverAppBar(
          title: const Text('WhatsApp'),
          pinned: true,
          floating: true,
          toolbarHeight: controller.index == 0 ? 0 : kToolbarHeight,
          actions: const [
            Icon(Icons.search_rounded),
            SizedBox(width: 10),
            Icon(Icons.more_vert_rounded),
            SizedBox(width: 5),
          ],
          bottom: controller.index == 0
              ? null
              : TabBar(
                  controller: controller,
                  physics: const ClampingScrollPhysics(),
                  isScrollable: true,
                  tabs: [
                    Tab(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .06,
                        child: const Icon(Icons.camera_alt_rounded),
                      ),
                    ),
                    const CustomTab(text: 'CHAT'),
                    const CustomTab(text: 'STATUS'),
                    const CustomTab(text: 'CALLS'),
                  ],
                ),
        );
      },
    );
  }
}

class CustomTab extends StatelessWidget {
  const CustomTab({
    Key? key,
    required this.text,
    this.extra,
  }) : super(key: key);

  final String text;
  final Widget? extra;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .2,
        child: Center(
          child: extra != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(text),
                    extra!,
                  ],
                )
              : Text(text),
        ),
      ),
    );
  }
}
