import 'package:flutter/material.dart';
import 'package:ostella/core/barrel_file.dart';

class CommentCard extends StatelessWidget {
  final String username;
  final String comment;
  final String timeAgo;

  const CommentCard({
    super.key,
    required this.username,
    required this.comment,
    required this.timeAgo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            radius: 24,
            child: ClipOval(
              child: Image.asset(
                'assets/images/Avatars.png',
                fit: BoxFit.cover,
                width: 48,
                height: 48,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      username,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      timeAgo,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  comment,
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildActionButton(Icons.thumb_up_outlined, 'Like'),
                    SizedBox(width: 12.w),
                    _buildActionButton(Icons.thumb_down_outlined, 'Dislike'),
                    SizedBox(width: 12.w),
                    _buildActionButton(Icons.reply_outlined, 'Reply'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5.h),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              padding: EdgeInsets.all(3.h),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(2),
              ),
              child: Icon(icon, size: 16, color: Colors.grey[600])),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
