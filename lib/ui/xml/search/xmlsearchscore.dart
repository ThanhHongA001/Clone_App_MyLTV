import 'package:flutter/material.dart';

import 'xml_search_common.dart';

class XmlSearchScore extends StatelessWidget {
  const XmlSearchScore({super.key});

  static const Color _color = Color(0xffffa536);

  @override
  Widget build(BuildContext context) {
    return SearchPageFrame(
      title: 'Sổ điểm',
      subtitle: 'Theo dõi điểm kiểm tra, điểm trung bình và nhận xét học tập.',
      icon: Icons.bar_chart_rounded,
      color: _color,
      children: [
        _summaryCard(),
        _scoreCard(
          subject: 'Toán học',
          teacher: 'Nguyễn Văn Minh',
          oral: '8.0',
          fifteen: '8.5',
          mid: '7.8',
          finalScore: '9.0',
          average: '8.4',
          rank: 'Tốt',
        ),
        _scoreCard(
          subject: 'Ngữ văn',
          teacher: 'Trần Thị Hạnh',
          oral: '7.5',
          fifteen: '8.0',
          mid: '8.2',
          finalScore: '8.0',
          average: '8.0',
          rank: 'Khá',
        ),
        _scoreCard(
          subject: 'Tiếng Anh',
          teacher: 'Lê Hoàng Anh',
          oral: '9.0',
          fifteen: '8.8',
          mid: '8.5',
          finalScore: '9.2',
          average: '8.9',
          rank: 'Tốt',
        ),
      ],
    );
  }

  Widget _summaryCard() {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xffece6ef)),
      ),
      child: Row(
        children: [
          _summaryItem('TB học kỳ', '8.4'),
          _summaryItem('Xếp loại', 'Tốt'),
          _summaryItem('Môn đã có điểm', '9/12'),
        ],
      ),
    );
  }

  Widget _summaryItem(String label, String value) {
    return Expanded(
      child: Column(
        children: [
          Text(
            value,
            style: const TextStyle(
              color: _color,
              fontSize: 22,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xff777777),
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _scoreCard({
    required String subject,
    required String teacher,
    required String oral,
    required String fifteen,
    required String mid,
    required String finalScore,
    required String average,
    required String rank,
  }) {
    return SearchInfoCard(
      title: subject,
      subtitle: 'Giáo viên: $teacher',
      icon: Icons.school_rounded,
      color: _color,
      tag: rank,
      children: [
        Row(
          children: [
            _scoreBox('Miệng', oral),
            _scoreBox('15p', fifteen),
            _scoreBox('Giữa kỳ', mid),
            _scoreBox('Cuối kỳ', finalScore),
          ],
        ),
        const SizedBox(height: 14),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          decoration: BoxDecoration(
            color: _color.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              const Expanded(
                child: Text(
                  'Điểm trung bình môn',
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
              Text(
                average,
                style: const TextStyle(
                  color: _color,
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _scoreBox(String label, String score) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 3),
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: const Color(0xfff8f4fa),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(
              score,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: Color(0xff2e2e2e),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                fontSize: 11,
                color: Color(0xff777777),
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
