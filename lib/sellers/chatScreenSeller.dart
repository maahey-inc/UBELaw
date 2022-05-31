import 'package:flutter/material.dart';
import 'package:ubelaw/sellers/createOfferSeller.dart';
import 'package:ubelaw/widgets/defaultButton.dart';

class ChatPageSeller extends StatefulWidget {
  const ChatPageSeller({Key? key}) : super(key: key);

  @override
  State<ChatPageSeller> createState() => _ChatPageSellerState();
}

class _ChatPageSellerState extends State<ChatPageSeller> {
  TextEditingController? msgController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView(
            children: [
              MessageTile(name: "khan",msg: "HI",isMe:true,isVoice: false,),
              MessageTile(name: "Ahmad",msg: "Hello",isMe:false,isVoice: false,),
              MessageTile(name: "khan",msg: "How are you",isMe:true,isVoice: false,),
              MessageTile(name: "Ahmad",msg: "Fine What about You",isMe:false,isVoice: false,),
              MessageTile(name: "khan",msg: "",isMe:true,isVoice: true,),
              MessageTile(name: "Ahmad",msg: "",isMe:false,isVoice: true,),
            ],
          ),
        ),
        Container(
          //color: Colors.white,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Row(
                  children: <Widget>[
                    Center(
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          child: Icon(
                            Icons.mic,
                          ),
                          radius: 20,
                          backgroundColor: Colors.blueGrey,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textCapitalization: TextCapitalization.sentences,
                          controller: msgController,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Send Message ...',
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.send),
                      color: Colors.blue,
                      iconSize: 30.0,
                      onPressed: () async {},
                    ),
                  ],
                ),
              ),
              defaultButton(true, "Create Offer", () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (c) => CreateOfferSeller()));
              }),
              SizedBox(
                height: 2,
              )
            ],
          ),
        ),
      ],
    );
  }
}


class MessageTile extends StatelessWidget {
  final String msg;
  final String name;
  final bool isMe;
  final bool isVoice;
  final int valueHolder;
  MessageTile({required this.name, required this.msg, required this.isMe, required this.isVoice,this.valueHolder=2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: isMe ? 0 : 24, right: isMe ? 24 : 0),
      margin: EdgeInsets.symmetric(vertical: 8),
      width: MediaQuery.of(context).size.width,
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: isMe
                  ? [const Color(0xff007EF4), const Color(0xff2A75BC)]
                  : [const Color(0xFF4b4b40), const Color(0xFF4b4b40)]),
          borderRadius: isMe
              ? BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          )
              : BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
          ),
        ),
        child: Column(
          crossAxisAlignment:
          isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 5,
            ),
            isVoice?  Container(
              width: MediaQuery.of(context).size.width / 1.8,
              child: Row(
                children: [
                  Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                  Container(
                    child: Slider(
                        value: valueHolder.toDouble(),
                        min: 1,
                        max: 100,
                        divisions: 100,
                        activeColor: Colors.white,
                        inactiveColor: Colors.grey,
                        label: '${valueHolder.round()}',
                        onChanged: (double newValue) {
                          // setState(() {
                          //   valueHolder = newValue.round();
                          // });
                        },
                        semanticFormatterCallback:
                            (double newValue) {
                          return '${newValue.round()}';
                        }),
                  ),
                ],
              ),
            ):Text(
              msg,
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
