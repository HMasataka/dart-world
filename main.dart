import 'package:shelf_router/shelf_router.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;

void main() async {
  var app = Router();

  app.get('/hello', hello);

  app.get('/user/<user>', user);

  var server = await io.serve(app, 'localhost', 8080);
}

Response hello(Request request) {
  return Response.ok('hello-world');
}

Response user(Request request, String user) {
  return Response.ok('hello $user');
}
