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
import JDCloudSDKVpc

///  instanceNetworkInterfaceAttachmentSpec
@objc(InstanceNetworkInterfaceAttachmentSpec)
public class InstanceNetworkInterfaceAttachmentSpec:NSObject,Codable{
    /// 网卡设备Index，主网卡只能是1
    var deviceIndex:Int?
    /// 网卡接口规范
    var networkInterface:NetworkInterfaceSpec?



    public override init(){
            super.init()
    }

    enum InstanceNetworkInterfaceAttachmentSpecCodingKeys: String, CodingKey {
        case deviceIndex
        case networkInterface
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: InstanceNetworkInterfaceAttachmentSpecCodingKeys.self)
        self.deviceIndex = try decoderContainer.decode(Int?.self, forKey: .deviceIndex)
        self.networkInterface = try decoderContainer.decode(NetworkInterfaceSpec?.self, forKey: .networkInterface)
    }
}
public extension InstanceNetworkInterfaceAttachmentSpec{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: InstanceNetworkInterfaceAttachmentSpecCodingKeys.self)
         try encoderContainer.encode(deviceIndex, forKey: .deviceIndex)
         try encoderContainer.encode(networkInterface, forKey: .networkInterface)
    }
}
