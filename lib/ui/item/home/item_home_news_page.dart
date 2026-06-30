import 'package:flutter/material.dart';

class ItemHomeNewsPage extends StatelessWidget {
  final String source;
  final String author;
  final String dateTime;
  final String category;
  final String title;
  final String content;
  final Color categoryColor;

  const ItemHomeNewsPage({
    super.key,
    required this.source,
    required this.author,
    required this.dateTime,
    required this.category,
    required this.title,
    required this.content,
    this.categoryColor = const Color(0xff3C9D8B),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          dongNguonTin(),
          const SizedBox(height: 18),
          dongThoiGianVaLoaiTin(),
          const SizedBox(height: 14),
          tieuDeThongBao(),
          const SizedBox(height: 18),
          noiDungThongBao(),
        ],
      ),
    );
  }

  Widget dongNguonTin() {
    return Row(
      children: [
        Text(
          source,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Color(0xff333333),
          ),
        ),
        const SizedBox(width: 10),
        const Icon(
          Icons.play_arrow_rounded,
          size: 22,
          color: Color(0xff8A8A8A),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            author,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff4A4A4A),
            ),
          ),
        ),
      ],
    );
  }

  Widget dongThoiGianVaLoaiTin() {
    return Row(
      children: [
        const Icon(
          Icons.notifications,
          size: 18,
          color: Color(0xffE95D4F),
        ),
        const SizedBox(width: 8),
        Flexible(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: dateTime,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff333333),
                  ),
                ),
                const TextSpan(
                  text: ' · ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff777777),
                  ),
                ),
                TextSpan(
                  text: category,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: categoryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget tieuDeThongBao() {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        height: 1.35,
        fontWeight: FontWeight.w800,
        color: Color(0xff202124),
      ),
    );
  }

  Widget noiDungThongBao() {
    return Text(
      content,
      style: const TextStyle(
        fontSize: 18,
        height: 1.55,
        fontWeight: FontWeight.w400,
        color: Color(0xff2D2D2D),
      ),
    );
  }
}