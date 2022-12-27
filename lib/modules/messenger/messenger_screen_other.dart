import 'package:flutter/material.dart';

class Messenger extends StatefulWidget {
  const Messenger({Key? key}) : super(key: key);

  @override
  State<Messenger> createState() => _MessengerState();
}

class _MessengerState extends State<Messenger> {
  List<Widget> data = [

    const SizedBox(
      height: 10.0,
    ),
    Container(
      height: 70.0,
      color: Colors.grey[100],
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: const [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('images/group.png'),
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Maya Eva',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'hi how are you today girl!',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style:
                        TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 4,
                      height: 4,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                    ),
                    const Text(
                      'Nov 19  ',
                      style:
                      TextStyle(fontSize: 13, color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
    const SizedBox(
      height: 15.0,
    ),
    Container(
      height: 70.0,
      color: Colors.grey[100],
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: const [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('images/man.png'),
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Maya Eva',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'hi how are you today girl!',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style:
                        TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 4,
                      height: 4,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                    ),
                    const Text(
                      'Nov 19  ',
                      style:
                      TextStyle(fontSize: 13, color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
    const SizedBox(
      height: 15.0,
    ),
    Container(
      height: 70.0,
      color: Colors.grey[100],
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: const [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('images/man2.png'),
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Maya Eva',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'hi how are you today girl!',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style:
                        TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 4,
                      height: 4,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                    ),
                    const Text(
                      'Nov 19  ',
                      style:
                      TextStyle(fontSize: 13, color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
    const SizedBox(
      height: 15.0,
    ),
    Container(
      height: 70.0,
      color: Colors.grey[100],
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: const [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('images/man3.png'),
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Maya Eva',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'hi how are you today girl!',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style:
                        TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 4,
                      height: 4,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                    ),
                    const Text(
                      'Nov 19  ',
                      style:
                      TextStyle(fontSize: 13, color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
    const SizedBox(
      height: 15.0,
    ),
    Container(
      height: 70.0,
      color: Colors.grey[100],
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: const [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('images/group.png'),
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Maya Eva',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'hi how are you today girl!',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style:
                        TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 4,
                      height: 4,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                    ),
                    const Text(
                      'Nov 19  ',
                      style:
                      TextStyle(fontSize: 13, color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
    const SizedBox(
      height: 15.0,
    ),
    Container(
      height: 70.0,
      color: Colors.grey[100],
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: const [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('images/group.png'),
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Maya Eva',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'hi how are you today girl!',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style:
                        TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 4,
                      height: 4,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                    ),
                    const Text(
                      'Nov 19  ',
                      style:
                      TextStyle(fontSize: 13, color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
    const SizedBox(
      height: 15.0,
    ),
    Container(
      height: 70.0,
      color: Colors.grey[100],
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: const [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('images/group.png'),
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Maya Eva',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'hi how are you today girl!',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style:
                        TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 4,
                      height: 4,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                    ),
                    const Text(
                      'Nov 19  ',
                      style:
                      TextStyle(fontSize: 13, color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
    const SizedBox(
      height: 15.0,
    ),
    Container(
      height: 70.0,
      color: Colors.grey[100],
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: const [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('images/group.png'),
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Maya Eva',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'hi how are you today girl!',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style:
                        TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 4,
                      height: 4,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                    ),
                    const Text(
                      'Nov 19  ',
                      style:
                      TextStyle(fontSize: 13, color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
    const SizedBox(
      height: 15.0,
    ),

  ];
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 10.0,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          // mainAxisSize: MainAxisSize.min,
          children: const [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('images/s7r.png'),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Chats',
              style: TextStyle(color: Colors.black, fontSize: 25.0),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.grey.shade300,
                  child: const Icon(
                    Icons.camera_enhance,
                    size: 18.0,
                    color: Colors.black,
                  ))),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.grey.shade300,
                  child: const Icon(
                    Icons.edit,
                    size: 18.0,
                    color: Colors.black,
                  ))),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 45.0,
                padding: const EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(30.0)),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                height: 90,
                child: ListView.separated(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                   itemBuilder: (BuildContext context, int index) {
                     return buildStoryItem();
                   }, separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(width: 10.0,);
                },
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
             ListView.separated(
               physics: NeverScrollableScrollPhysics(),
               shrinkWrap: true,
               itemCount: 10,
                 itemBuilder: (context , i){
                    return buildChatItem();
                 }, separatorBuilder: (BuildContext context, int index) {
                 return const SizedBox(height: 10.0,);},)
            ],
          ),
        ),
      ),
    );
  }
  Widget buildStoryItem(){
   return
        SizedBox(
          width: 80,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: const [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('images/man.png'),
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 7.0,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ],
              ),
              const Text(
                'Nick Batman',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        );
  }
  Widget buildChatItem(){
    return  Container(
      height: 70.0,
      color: Colors.grey[100],
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: const [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('images/group.png'),
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Maya Eva',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'hi how are you today girl!',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style:
                        TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 4,
                      height: 4,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                    ),
                    const Text(
                      'Nov 19  ',
                      style:
                      TextStyle(fontSize: 13, color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
