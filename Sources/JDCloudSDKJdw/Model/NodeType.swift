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

///  nodeType
@objc(NodeType)
public class NodeType:NSObject,Codable{
    /// 节点规格代码
    var nodeTypeValue:String?
    /// CPU核数
    var cpu:Int?
    /// 内存容量，单位GB
    var memory:Int?
    /// 存储空间容量，单位GB
    var storage:Int?
    /// 最小节点数量
    var miniNodeNumber:Int?
    /// 最大节点数量
    var maxNodeNumber:Int?



    public override init(){
            super.init()
    }

    enum NodeTypeCodingKeys: String, CodingKey {
        case nodeTypeValue = "nodeType"
        case cpu
        case memory
        case storage
        case miniNodeNumber
        case maxNodeNumber
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: NodeTypeCodingKeys.self)
        self.nodeTypeValue = try decoderContainer.decode(String?.self, forKey: .nodeTypeValue)
        self.cpu = try decoderContainer.decode(Int?.self, forKey: .cpu)
        self.memory = try decoderContainer.decode(Int?.self, forKey: .memory)
        self.storage = try decoderContainer.decode(Int?.self, forKey: .storage)
        self.miniNodeNumber = try decoderContainer.decode(Int?.self, forKey: .miniNodeNumber)
        self.maxNodeNumber = try decoderContainer.decode(Int?.self, forKey: .maxNodeNumber)
    }
}
public extension NodeType{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: NodeTypeCodingKeys.self)
         try encoderContainer.encode(nodeTypeValue, forKey: .nodeTypeValue)
         try encoderContainer.encode(cpu, forKey: .cpu)
         try encoderContainer.encode(memory, forKey: .memory)
         try encoderContainer.encode(storage, forKey: .storage)
         try encoderContainer.encode(miniNodeNumber, forKey: .miniNodeNumber)
         try encoderContainer.encode(maxNodeNumber, forKey: .maxNodeNumber)
    }
}
