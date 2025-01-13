import 'package:ostella/core/barrel_file.dart';
import 'package:ostella/services/connectivity_service.dart';
import 'package:ostella/widgets/bottom_input.dart';
import 'package:ostella/widgets/caraousel_header.dart';
import 'package:ostella/widgets/comment_card.dart';
import 'package:ostella/widgets/custom_tab_bar.dart';
import 'package:ostella/widgets/post_header.dart';

class TabItem {
  final String label;
  final IconData icon;

  TabItem({required this.label, required this.icon});
}

class ClassroomScreen extends StatefulWidget {
  const ClassroomScreen({super.key});

  @override
  State<ClassroomScreen> createState() => _ClassroomScreenState();
}

class _ClassroomScreenState extends State<ClassroomScreen> {
  int _selectedTabIndex = 0;
  final List<TabItem> _tabs = [
    TabItem(label: 'Comments', icon: Icons.comment_outlined),
    TabItem(label: 'Notes', icon: Icons.book_rounded),
    TabItem(label: 'Rewards', icon: Icons.star),
  ];

  @override
  Widget build(BuildContext context) {
    final isConnected = context.watch<ConnectivityService>().isConnected;
    return Scaffold(
      backgroundColor: Colors.white,
      body: !isConnected
          ? const OfflineWidget()
          : Column(
              children: [
                const CarouselHeader(),
                Expanded(
                  child: ListView(
                    children: [
                      const PostHeader(
                        title: 'Algebra 12: Functions 4',
                        description:
                            'Most shocking news most shocking most shocking news Most shocking news',
                      ),
                      CustomTabBar(
                        tabs: _tabs,
                        selectedIndex: _selectedTabIndex,
                        onTap: (index) {
                          setState(() {
                            _selectedTabIndex = index;
                          });
                        },
                      ),
                      if (_selectedTabIndex == 0) ...[
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return const CommentCard(
                              username: 'James Lipshutz',
                              comment:
                                  'If we quantify the interface, we can get to the SMTP bus through the redundant 1B pixel!',
                              timeAgo: '2m',
                            );
                          },
                        ),
                      ],
                    ],
                  ),
                ),
                const BottomInput(),
              ],
            ),
    );
  }
}
