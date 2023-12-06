import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:function_test/connectionInfo.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '로그인',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: '사용자 이름',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '사용자 이름을 입력해주세요.';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: '비밀번호',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '비밀번호를 입력해주세요.';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () async {
                        NetworkService n = NetworkService();
                        Map<String, dynamic> token = await n.login(_usernameController.text, _passwordController.text);
                        print(token);
                        _passwordController.clear();
                        _usernameController.clear();
                        n.fetchData(LOGIN_SERVER_URL+'/register');
                      },
                      child: Text('로그인'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                      },
                      child: Text('비밀번호를 잊으셨나요?'),
                    ),
                  ],
                ),
              )
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }


}
class NetworkService {
  late Dio _dio;
  late String _authToken = '';

  NetworkService() {
    _dio = Dio();
  }

  Future<Map<String, dynamic>> login(String username, String password) async {

    Response response= await _dio.post(LOGIN_SERVER_URL+'/api/login',data: {
      'username' : username,
      'password' : password,
      },);

    if (response.statusCode == 200) {
      return response.data;
    } else {
      // 로그인 실패 처리
      return response.data;
    }
  }

  Future<Response> fetchData(String url) async {
    return await _dio.get(
      url,
      options: Options(headers: {'Authorization': 'Bearer $_authToken'}),
    );
  }
}

