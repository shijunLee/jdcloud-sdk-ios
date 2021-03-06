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

///  cCSpec
@objc(CCSpec)
public class CCSpec:NSObject,Codable{
    /// cc防护模式：0正常 1宽松 2紧急 3自定义
    var ccProtectMode:Int?
    /// cc阈值大小
    var ccThreshold:Int?
    /// ccProtectMode为自定义模式时，指定每个Host的防护阈值
    var hostQps:Int?
    /// ccProtectMode为自定义模式时，指定每个Host+URI的防护阈值
    var hostUrlQps:Int?
    /// ccProtectMode为自定义模式时，指定每个源IP对Host的防护阈值
    var ipHostQps:Int?
    /// ccProtectMode为自定义模式时，指定每个源IP对Host+URI的防护阈值
    var ipHostUrlQps:Int?



    public override init(){
            super.init()
    }

    enum CCSpecCodingKeys: String, CodingKey {
        case ccProtectMode
        case ccThreshold
        case hostQps
        case hostUrlQps
        case ipHostQps
        case ipHostUrlQps
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CCSpecCodingKeys.self)
        self.ccProtectMode = try decoderContainer.decode(Int?.self, forKey: .ccProtectMode)
        self.ccThreshold = try decoderContainer.decode(Int?.self, forKey: .ccThreshold)
        self.hostQps = try decoderContainer.decode(Int?.self, forKey: .hostQps)
        self.hostUrlQps = try decoderContainer.decode(Int?.self, forKey: .hostUrlQps)
        self.ipHostQps = try decoderContainer.decode(Int?.self, forKey: .ipHostQps)
        self.ipHostUrlQps = try decoderContainer.decode(Int?.self, forKey: .ipHostUrlQps)
    }
}
public extension CCSpec{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CCSpecCodingKeys.self)
         try encoderContainer.encode(ccProtectMode, forKey: .ccProtectMode)
         try encoderContainer.encode(ccThreshold, forKey: .ccThreshold)
         try encoderContainer.encode(hostQps, forKey: .hostQps)
         try encoderContainer.encode(hostUrlQps, forKey: .hostUrlQps)
         try encoderContainer.encode(ipHostQps, forKey: .ipHostQps)
         try encoderContainer.encode(ipHostUrlQps, forKey: .ipHostUrlQps)
    }
}
