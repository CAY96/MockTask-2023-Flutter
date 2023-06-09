import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:mock_task_2023_flutter/ui/report_page/report_view_model.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ReportViewModel(),
        child: Consumer<ReportViewModel>(builder: (context, viewModel, child) {
          return const Placeholder();
        }));
  }
}
