import 'package:chatbot_screen/component/customTweenText.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ChatBotScreen extends StatefulWidget {
  const ChatBotScreen({Key? key}) : super(key: key);

  @override
  State<ChatBotScreen> createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {

  List<Widget> chatWidgetList = [];
  late TextEditingController _textEditingController;


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade700,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              width: 550.0,
              height: 912.0,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20.0),
                    width: MediaQuery.of(context).size.width,
                    height: 110.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('챗봇', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        CustomTweenText(text: '안녕하세요! 무엇을 도와드릴까요?',style: TextStyle(),)
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 700.0,
                    padding: EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: chatWidgetList,
                      ),
                    )
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100.0,
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      controller: _textEditingController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '텍스트 입력',
                          suffixIcon: IconButton(
                            icon: Icon(Icons.send),
                            onPressed: (){
                              if(_textEditingController.text == ''){
                                showDialog(context: context, builder: (context){
                                  return AlertDialog(
                                    content: Container(
                                      child: Text('대화를 입력해주세요!'),
                                    ),
                                  );
                                });
                              }else{
                                addChatBotResult(
                                    userText: _textEditingController.text
                                );
                                _textEditingController.clear();
                              }
                            },
                          )
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }

  @override
  void initState(){
    _textEditingController = TextEditingController();

  }

  sendQueryToChatbotServer(String query) async{

    Dio dio = Dio();
    print(query);
    Response res = await dio.post('http://minseotest.iptime.org:50042/query/TEST', data: {
      'query' : query
    });

    return res.data['Answer'];
  }

  addChatBotResult({
    required String userText,
}){
    setState(() {
      chatWidgetList.add(
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('사용자', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),
                    Text(userText, style: TextStyle(color: Colors.grey),),
                  ],
                )
              ],
            ),
          )
      );
      chatWidgetList.add(
        Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('챗봇', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),
                  FutureBuilder(
                    future: sendQueryToChatbotServer(_textEditingController.text),
                    builder: (context, snapshot){
                      if (snapshot.hasData){

                        String? responseChatbot = snapshot.data.toString();

                        return CustomTweenText(
                          style: TextStyle(color: Colors.grey), text: responseChatbot,);
                      }else{
                        return CircularProgressIndicator();
                      }
                    },
                  )
                ],
              )
            ],
          ),
        ),
      );
    });
  }

  @override
  void dispose(){
    _textEditingController.dispose();
  }
}
