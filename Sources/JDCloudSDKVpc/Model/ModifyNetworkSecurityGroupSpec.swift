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

   
   

   
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  modifyNetworkSecurityGroupSpec
@objc(ModifyNetworkSecurityGroupSpec)
public class ModifyNetworkSecurityGroupSpec:NSObject,Codable{
    /// 安全组的名字。名称取值范围：1-32个中文、英文大小写的字母、数字和下划线分隔符
    var networkSecurityGroupName:String?
    /// 安全组的描述，取值范围：0-256个UTF-8编码下的全部字符
    var descriptionValue:String?



    public override init(){
            super.init()
    }

    enum ModifyNetworkSecurityGroupSpecCodingKeys: String, CodingKey {
        case networkSecurityGroupName
        case descriptionValue = "description"
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ModifyNetworkSecurityGroupSpecCodingKeys.self)
        self.networkSecurityGroupName = try decoderContainer.decode(String?.self, forKey: .networkSecurityGroupName)
        self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
    }
}
public extension ModifyNetworkSecurityGroupSpec{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModifyNetworkSecurityGroupSpecCodingKeys.self)
         try encoderContainer.encode(networkSecurityGroupName, forKey: .networkSecurityGroupName)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
    }
}
