/* Copyright 2018 JDCLOUD.COM

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

     http:#www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

   账号管理
   API related to Relational Database Service

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 重置数据库账号密码。如果用户忘记账号的密码，可以使用该接口重置指定账号密码。密码重置后，以前的密码将无法使用，必须使用重置后的新密码登录或连接数据库实例。
@objc(ResetPasswordResult)
public class ResetPasswordResult:NSObject,JdCloudResult
{
}
