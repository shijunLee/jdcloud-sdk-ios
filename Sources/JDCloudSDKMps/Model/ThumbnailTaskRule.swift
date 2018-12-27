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

   媒体处理相关接口
   媒体处理API

   OpenAPI spec version: 1.0.0
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  视频截图规则参数
@objc(ThumbnailTaskRule)
public class ThumbnailTaskRule:NSObject,Codable{
    /// 截图模式 单张: single 多张: multi 平均: average default: single
    var mode:String?
    /// 是否开启关键帧截图 default: true
    var keyFrame:Bool?
    /// 生成截图的开始时间, mode&#x3D;average 时不可选. default:0
    var startTimeInSecond:Int?
    /// 生成截图的结束时间, mode&#x3D;single/average时不可选, 且不得小于startTimeInSecond. default:-1(代表视频时长)
    var endTimeInSecond:Int?
    /// 截图数量, mode&#x3D;single时不可选. default:1
    var count:Int?



    public override init(){
            super.init()
    }

    enum ThumbnailTaskRuleCodingKeys: String, CodingKey {
        case mode
        case keyFrame
        case startTimeInSecond
        case endTimeInSecond
        case count
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ThumbnailTaskRuleCodingKeys.self)
        self.mode = try decoderContainer.decode(String?.self, forKey: .mode)
        self.keyFrame = try decoderContainer.decode(Bool?.self, forKey: .keyFrame)
        self.startTimeInSecond = try decoderContainer.decode(Int?.self, forKey: .startTimeInSecond)
        self.endTimeInSecond = try decoderContainer.decode(Int?.self, forKey: .endTimeInSecond)
        self.count = try decoderContainer.decode(Int?.self, forKey: .count)
    }
}
public extension ThumbnailTaskRule{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ThumbnailTaskRuleCodingKeys.self)
         try encoderContainer.encode(mode, forKey: .mode)
         try encoderContainer.encode(keyFrame, forKey: .keyFrame)
         try encoderContainer.encode(startTimeInSecond, forKey: .startTimeInSecond)
         try encoderContainer.encode(endTimeInSecond, forKey: .endTimeInSecond)
         try encoderContainer.encode(count, forKey: .count)
    }
}
