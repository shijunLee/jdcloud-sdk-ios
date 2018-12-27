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

///  vpcPeering
@objc(VpcPeering)
public class VpcPeering:NSObject,Codable{
    /// VpcPeering的Id
    var vpcPeeringId:String?
    /// VpcPeering名称，同账号下不允许重名，取值范围：1-32个中文、英文大小写的字母、数字和下划线分隔符
    var vpcPeeringName:String?
    /// 状态，取值为Connected，Disconnected，Initiated
    var vpcPeeringState:String?
    /// VpcPeering 描述，可为空值，取值范围：0-256个中文、英文大小写的字母、数字和下划线分隔符
    var descriptionValue:String?
    /// 发起VpcPeering的Vpc信息
    var vpcInfo:VpcPeeringVpcInfo?
    /// 对端的Vpc信息
    var remoteVpcInfo:VpcPeeringVpcInfo?
    /// VpcPeering创建时间
    var createdTime:String?



    public override init(){
            super.init()
    }

    enum VpcPeeringCodingKeys: String, CodingKey {
        case vpcPeeringId
        case vpcPeeringName
        case vpcPeeringState
        case descriptionValue = "description"
        case vpcInfo
        case remoteVpcInfo
        case createdTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: VpcPeeringCodingKeys.self)
        self.vpcPeeringId = try decoderContainer.decode(String?.self, forKey: .vpcPeeringId)
        self.vpcPeeringName = try decoderContainer.decode(String?.self, forKey: .vpcPeeringName)
        self.vpcPeeringState = try decoderContainer.decode(String?.self, forKey: .vpcPeeringState)
        self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        self.vpcInfo = try decoderContainer.decode(VpcPeeringVpcInfo?.self, forKey: .vpcInfo)
        self.remoteVpcInfo = try decoderContainer.decode(VpcPeeringVpcInfo?.self, forKey: .remoteVpcInfo)
        self.createdTime = try decoderContainer.decode(String?.self, forKey: .createdTime)
    }
}
public extension VpcPeering{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: VpcPeeringCodingKeys.self)
         try encoderContainer.encode(vpcPeeringId, forKey: .vpcPeeringId)
         try encoderContainer.encode(vpcPeeringName, forKey: .vpcPeeringName)
         try encoderContainer.encode(vpcPeeringState, forKey: .vpcPeeringState)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(vpcInfo, forKey: .vpcInfo)
         try encoderContainer.encode(remoteVpcInfo, forKey: .remoteVpcInfo)
         try encoderContainer.encode(createdTime, forKey: .createdTime)
    }
}