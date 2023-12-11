import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/common/extension/build_context_extension.dart';

import '../../common/utils/images/image_res.dart';
import '../../common/widgets/app_bar.dart';
import 'models/items.dart';
import 'widgets/updates_widgets.dart';

class UpdatesScreen extends StatefulWidget {
  const UpdatesScreen({super.key});

  @override
  State<UpdatesScreen> createState() => _UpdatesScreenState();
}

class _UpdatesScreenState extends State<UpdatesScreen> {
  @override
  Widget build(BuildContext context) {
    var _item = Item.status;
    return Scaffold(
      appBar: buildAppBar(
        title: Text(
          'Updates',
          style: context.appTextTheme.bodyMedium!.copyWith(fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
          ),
          GestureDetector(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                profilepics,
                fit: BoxFit.cover,
                width: 35.w,
                height: 35.w,
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15.h, top: 20.h, right: 10.h),
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Status',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 24),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 80.h,
                    child: ListTile(
                      leading: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              profilepics,
                              fit: BoxFit.cover,
                              width: 50.w,
                              height: 50.w,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: IconButton(
                              style: IconButton.styleFrom(
                                padding: const EdgeInsets.all(10),
                              ),
                              icon: const Icon(
                                Icons.add,
                                size: 15,
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                      title: const Text('My Status'),
                      subtitle: const Text('Tap to add status update'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 10.w,
                    ),
                    child: const Text(
                      'Recent Updates',
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 10,
                (context, index) {
                  return statusItem();
                },
              ),
            ),
            SliverToBoxAdapter(
              child: ExpansionPanelList(
                expansionCallback: (index, isExpanded) {
                  setState(() {
                    _item[index].isExpanded = isExpanded;
                  });
                },
                children: _item
                    .map(
                      (item) => ExpansionPanel(
                        isExpanded: item.isExpanded,
                        headerBuilder: (_, isExpanded) {
                          return ListTile(
                            splashColor: Colors.white,
                            enabled: true,
                            title: Text(item.headerValue),
                          );
                        },
                        body: Column(
                          children: [
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              itemCount: 15,
                              itemBuilder: (_, index) {
                                return statusItem();
                              },
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
