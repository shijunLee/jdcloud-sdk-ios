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

///  viewTree
@objc(ViewTree)
public class ViewTree:NSObject,Codable{
    /// 此解析线路是否禁用
    var disabled:Bool?
    /// 解析线路的名称
    var label:String?
    /// 此数据是否是叶子节点
    var leaf:Bool?
    /// 解析线路ID
    var value:Int?
    /// Children
    var children:ViewTree?



    public override init(){
            super.init()
    }

    enum ViewTreeCodingKeys: String, CodingKey {
        case disabled
        case label
        case leaf
        case value
        case children
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ViewTreeCodingKeys.self)
        self.disabled = try decoderContainer.decode(Bool?.self, forKey: .disabled)
        self.label = try decoderContainer.decode(String?.self, forKey: .label)
        self.leaf = try decoderContainer.decode(Bool?.self, forKey: .leaf)
        self.value = try decoderContainer.decode(Int?.self, forKey: .value)
        self.children = try decoderContainer.decode(ViewTree?.self, forKey: .children)
    }
}
public extension ViewTree{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ViewTreeCodingKeys.self)
         try encoderContainer.encode(disabled, forKey: .disabled)
         try encoderContainer.encode(label, forKey: .label)
         try encoderContainer.encode(leaf, forKey: .leaf)
         try encoderContainer.encode(value, forKey: .value)
         try encoderContainer.encode(children, forKey: .children)
    }
}
