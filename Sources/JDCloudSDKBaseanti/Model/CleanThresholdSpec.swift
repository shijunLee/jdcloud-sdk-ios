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

///  cleanThresholdSpec
@objc(CleanThresholdSpec)
public class CleanThresholdSpec:NSObject,Codable{
    /// 触发清洗的流量速率，单位bps，范围是10000000到300000000
    var cleanThresholdBps:Int64?
    /// 触发清洗的包速率，单位pps，范围是2000到70000
    var cleanThresholdPps:Int64?



    public override init(){
            super.init()
    }

    enum CleanThresholdSpecCodingKeys: String, CodingKey {
        case cleanThresholdBps
        case cleanThresholdPps
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CleanThresholdSpecCodingKeys.self)
        self.cleanThresholdBps = try decoderContainer.decode(Int64?.self, forKey: .cleanThresholdBps)
        self.cleanThresholdPps = try decoderContainer.decode(Int64?.self, forKey: .cleanThresholdPps)
    }
}
public extension CleanThresholdSpec{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CleanThresholdSpecCodingKeys.self)
         try encoderContainer.encode(cleanThresholdBps, forKey: .cleanThresholdBps)
         try encoderContainer.encode(cleanThresholdPps, forKey: .cleanThresholdPps)
    }
}
