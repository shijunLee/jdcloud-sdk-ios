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

   子网
   子网相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  修改子网接口
@objc(ModifySubnetRequest)
public class ModifySubnetRequest:JdCloudRequest
{
    /// 子网名称,只允许输入中文、数字、大小写字母、英文下划线“_”及中划线“-”，不允许为空且不超过32字符。
    var subnetName:String?

    /// 子网描述信息，允许输入UTF-8编码下的全部字符，不超过256字符。
    var descriptionValue:String?

    /// Subnet ID
    var subnetId:String


    public init(regionId: String,subnetId:String){
        self.subnetId = subnetId
        super.init(regionId: regionId)
    }


    enum ModifySubnetRequestRequestCodingKeys: String, CodingKey {
        case subnetName
        case descriptionValue = "description"
        case subnetId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModifySubnetRequestRequestCodingKeys.self)
        try encoderContainer.encode(subnetName, forKey: .subnetName)
        try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
        try encoderContainer.encode(subnetId, forKey: .subnetId)

    }
}
