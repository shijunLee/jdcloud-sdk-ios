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

   Ip高防报表相关接口
   Ip高防报表相关接口，包括cc防护、ddos防护、转发流量

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 转发流量报表
@objc(FwdGraphResult)
public class FwdGraphResult:NSObject,JdCloudResult
{
    /// ForwardRecord
    var forwardRecord:Double?

    /// Time
    var time:Int64?

    /// 单位
    var unit:String?



    public override init(){
        super.init()
    }

    enum FwdGraphResultCodingKeys: String, CodingKey {
        case forwardRecord
        case time
        case unit
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: FwdGraphResultCodingKeys.self)
        self.forwardRecord = try decoderContainer.decode(Double?.self, forKey: .forwardRecord)
        self.time = try decoderContainer.decode(Int64?.self, forKey: .time)
        self.unit = try decoderContainer.decode(String?.self, forKey: .unit)
    }
}
public extension FwdGraphResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: FwdGraphResultCodingKeys.self)
        try encoderContainer.encode(forwardRecord, forKey: .forwardRecord)
        try encoderContainer.encode(time, forKey: .time)
        try encoderContainer.encode(unit, forKey: .unit)
    }
}
