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

   网站监控
   云解析OpenAPI网站监控接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  添加子域名的某些特定监控对象为监控项
@objc(AddMonitorTargetRequest)
public class AddMonitorTargetRequest:JdCloudRequest
{
    /// 子域名
    var subDomainName:String

    /// 子域名可用监控对象的数组
    var targets:String?

    /// 域名ID，请使用getDomains接口获取。
    var domainId:String


    public init(regionId: String,subDomainName:String,domainId:String){
        self.subDomainName = subDomainName
        self.domainId = domainId
        super.init(regionId: regionId)
    }


    enum AddMonitorTargetRequestRequestCodingKeys: String, CodingKey {
        case subDomainName
        case targets
        case domainId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AddMonitorTargetRequestRequestCodingKeys.self)
        try encoderContainer.encode(subDomainName, forKey: .subDomainName)
        try encoderContainer.encode(targets, forKey: .targets)
        try encoderContainer.encode(domainId, forKey: .domainId)

    }
}