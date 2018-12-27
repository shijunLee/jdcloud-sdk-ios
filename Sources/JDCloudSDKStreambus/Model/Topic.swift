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

///  topic
@objc(Topic)
public class Topic:NSObject,Codable{
    /// 主题id
    var id:Int?
    /// 是否归档（0：未归档，1：已归档）
    var archived:Int?
    /// 数据写入后的保留时间
    var lifecycle:Int?
    /// 分区
    var partitionNum:Int?
    /// 流数据总线中topic的名字
    var name:String?
    /// 流数据总线shard的数量
    var shardNum:Int?
    /// 备注
    var remark:String?



    public override init(){
            super.init()
    }

    enum TopicCodingKeys: String, CodingKey {
        case id
        case archived
        case lifecycle
        case partitionNum
        case name
        case shardNum
        case remark
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: TopicCodingKeys.self)
        self.id = try decoderContainer.decode(Int?.self, forKey: .id)
        self.archived = try decoderContainer.decode(Int?.self, forKey: .archived)
        self.lifecycle = try decoderContainer.decode(Int?.self, forKey: .lifecycle)
        self.partitionNum = try decoderContainer.decode(Int?.self, forKey: .partitionNum)
        self.name = try decoderContainer.decode(String?.self, forKey: .name)
        self.shardNum = try decoderContainer.decode(Int?.self, forKey: .shardNum)
        self.remark = try decoderContainer.decode(String?.self, forKey: .remark)
    }
}
public extension Topic{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: TopicCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(archived, forKey: .archived)
         try encoderContainer.encode(lifecycle, forKey: .lifecycle)
         try encoderContainer.encode(partitionNum, forKey: .partitionNum)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(shardNum, forKey: .shardNum)
         try encoderContainer.encode(remark, forKey: .remark)
    }
}