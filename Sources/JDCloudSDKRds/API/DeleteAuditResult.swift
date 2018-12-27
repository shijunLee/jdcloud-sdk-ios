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

   审计管理
   审计管理相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 关闭数据库审计。关闭数据库审计后，以前生成的审计结果文件并不会被立即删除。审计结果文件会过期后由系统自动删除，过期时间缺省为6个月&lt;br&gt;- 仅支持SQL Server
@objc(DeleteAuditResult)
public class DeleteAuditResult:NSObject,JdCloudResult
{
}
