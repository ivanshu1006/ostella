import 'package:ostella/constants/app_colors.dart';
import 'package:ostella/core/barrel_file.dart';

class PostHeader extends StatelessWidget {
  final String title;
  final String description;

  const PostHeader({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: RichText(
                      text: TextSpan(
                    text: description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    children: const [
                      TextSpan(
                          text: ' ..view more',
                          style: TextStyle(color: AppColors.themecolor))
                    ],
                  )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
