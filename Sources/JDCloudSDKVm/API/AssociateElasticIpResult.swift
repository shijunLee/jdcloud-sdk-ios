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

   云主机
   与主机操作相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 为云主机主网卡下的主内网IP绑定弹性公网IP。&lt;br&gt;
      ///       /// 一台云主机只能绑定一个弹性公网IP(主网卡)，若主网卡已存在弹性公网IP，会返回错误。&lt;br&gt;
      ///       /// 
@objc(AssociateElasticIpResult)
public class AssociateElasticIpResult:NSObject,JdCloudResult
{
}