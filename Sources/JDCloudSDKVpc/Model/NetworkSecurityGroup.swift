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

///  networkSecurityGroup
@objc(NetworkSecurityGroup)
public class NetworkSecurityGroup:NSObject,Codable{
    /// 安全组ID
    var networkSecurityGroupId:String?
    /// 安全组名称
    var networkSecurityGroupName:String?
    /// 安全组描述信息
    var descriptionValue:String?
    /// 安全组所在vpc的Id
    var vpcId:String?
    /// 安全组规则信息
    var securityGroupRules:SecurityGroupRule?
    /// 安全组创建时间
    var createdTime:String?



    public override init(){
            super.init()
    }

    enum NetworkSecurityGroupCodingKeys: String, CodingKey {
        case networkSecurityGroupId
        case networkSecurityGroupName
        case descriptionValue = "description"
        case vpcId
        case securityGroupRules
        case createdTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: NetworkSecurityGroupCodingKeys.self)
        self.networkSecurityGroupId = try decoderContainer.decode(String?.self, forKey: .networkSecurityGroupId)
        self.networkSecurityGroupName = try decoderContainer.decode(String?.self, forKey: .networkSecurityGroupName)
        self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        self.vpcId = try decoderContainer.decode(String?.self, forKey: .vpcId)
        self.securityGroupRules = try decoderContainer.decode(SecurityGroupRule?.self, forKey: .securityGroupRules)
        self.createdTime = try decoderContainer.decode(String?.self, forKey: .createdTime)
    }
}
public extension NetworkSecurityGroup{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: NetworkSecurityGroupCodingKeys.self)
         try encoderContainer.encode(networkSecurityGroupId, forKey: .networkSecurityGroupId)
         try encoderContainer.encode(networkSecurityGroupName, forKey: .networkSecurityGroupName)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(vpcId, forKey: .vpcId)
         try encoderContainer.encode(securityGroupRules, forKey: .securityGroupRules)
         try encoderContainer.encode(createdTime, forKey: .createdTime)
    }
}
