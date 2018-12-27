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

   安全组
   安全组相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  创建安全组
@objc(CreateNetworkSecurityGroupRequest)
public class CreateNetworkSecurityGroupRequest:JdCloudRequest
{
    /// 私有网络ID
    var vpcId:String

    /// 安全组名称，只允许输入中文、数字、大小写字母、英文下划线“_”及中划线“-”，不允许为空且不超过32字符。
    var networkSecurityGroupName:String

    /// 描述,​ 允许输入UTF-8编码下的全部字符，不超过256字符
    var descriptionValue:String?


    public init(regionId: String,vpcId:String,networkSecurityGroupName:String){
        self.vpcId = vpcId
        self.networkSecurityGroupName = networkSecurityGroupName
        super.init(regionId: regionId)
    }


    enum CreateNetworkSecurityGroupRequestRequestCodingKeys: String, CodingKey {
        case vpcId
        case networkSecurityGroupName
        case descriptionValue = "description"
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateNetworkSecurityGroupRequestRequestCodingKeys.self)
        try encoderContainer.encode(vpcId, forKey: .vpcId)
        try encoderContainer.encode(networkSecurityGroupName, forKey: .networkSecurityGroupName)
        try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)

    }
}
