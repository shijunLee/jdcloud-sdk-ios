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
import JDCloudSDKCharge

///  elasticIpSpec
@objc(ElasticIpSpec)
public class ElasticIpSpec:NSObject,Codable{
    /// 弹性公网IP的限速（单位：Mbps），取值范围为[1-200]
    /// Required:true
    var bandwidthMbps:Int
    /// IP服务商，取值为bgp或no_bgp，cn-north-1：bgp；cn-south-1：[bgp，no_bgp]；cn-east-1：[bgp，no_bgp]；cn-east-2：bgp
    /// Required:true
    var provider:String
    /// 计费配置
    var chargeSpec:ChargeSpec?



    public  init(bandwidthMbps:Int,provider:String){
             self.bandwidthMbps = bandwidthMbps
             self.provider = provider
    }

    enum ElasticIpSpecCodingKeys: String, CodingKey {
        case bandwidthMbps
        case provider
        case chargeSpec
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ElasticIpSpecCodingKeys.self)
        self.bandwidthMbps = try decoderContainer.decode(Int.self, forKey: .bandwidthMbps)
        self.provider = try decoderContainer.decode(String.self, forKey: .provider)
        self.chargeSpec = try decoderContainer.decode(ChargeSpec?.self, forKey: .chargeSpec)
    }
}
public extension ElasticIpSpec{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ElasticIpSpecCodingKeys.self)
         try encoderContainer.encode(bandwidthMbps, forKey: .bandwidthMbps)
         try encoderContainer.encode(provider, forKey: .provider)
         try encoderContainer.encode(chargeSpec, forKey: .chargeSpec)
    }
}
