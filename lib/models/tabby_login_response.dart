
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tabby_login_response.freezed.dart';
part 'tabby_login_response.g.dart';

@freezed
class TabbyLoginResponse with _$TabbyLoginResponse {
  factory TabbyLoginResponse({
    String? name,
    String? token,
    String? email,
    String? password,
    String? id,
    String? createdAt,
    String? updatedAt,
  }) = _TabbyLoginResponse;
	
  factory TabbyLoginResponse.fromJson(Map<String, dynamic> json) =>
			_$TabbyLoginResponseFromJson(json);
}
