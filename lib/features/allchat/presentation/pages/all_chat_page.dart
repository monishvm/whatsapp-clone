import 'package:flutter/material.dart';
import 'package:whatsapp_clone/features/widgets/noti_count_indicator.dart';

class AllChatPage extends StatelessWidget {
  const AllChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      padding: const EdgeInsets.only(top: 10),
      itemBuilder: (context, index) {
        return const ChatWidget();
      },
    );
  }
}

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    Key? key,
    this.unseenMsgCount,
  }) : super(key: key);

  final int? unseenMsgCount;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: MediaQuery.of(context).size.height * .09,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .03,
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: MediaQuery.of(context).size.width * .06,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(500),
                child: Image.network(
                  'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.width * .12,
                  width: MediaQuery.of(context).size.width * .12,
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * .04),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .01,
                  bottom: MediaQuery.of(context).size.height * .015,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            'Group Name Group Name Group Name Group Name Group Name Group Name Group Name Group Name Group Name',
                            style: Theme.of(context).textTheme.headline2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '3:30 pm',
                          style: unseenMsgCount != null
                              ? Theme.of(context).textTheme.subtitle2!.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  )
                              : Theme.of(context).textTheme.subtitle2,
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .006),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TickIcon(
                          color: 1 == 0
                              ? Theme.of(context).colorScheme.onPrimary
                              : Theme.of(context).colorScheme.surface,
                          isSingleTick: true,
                        ),
                        const SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            '94653726: chatcha tchatchat chatch atcha tdc nvdk fvj',
                            style: Theme.of(context).textTheme.subtitle2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        unseenMsgCount != null
                            ? const SizedBox(width: 5)
                            : const SizedBox(),
                        unseenMsgCount != null
                            ? NotiCountIndicator(count: unseenMsgCount!)
                            : const SizedBox(),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TickIcon extends StatelessWidget {
  const TickIcon({Key? key, required this.color, this.isSingleTick = false})
      : super(key: key);

  final bool isSingleTick;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isSingleTick
        ? Icon(
            Icons.done,
            size: 20,
            color: Theme.of(context).colorScheme.onPrimary,
          )
        : Container(
            color: Colors.green,
            height: 20,
            width: 25,
          );
  }
}
