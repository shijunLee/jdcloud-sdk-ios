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

///  tagKeyValue
@objc(TagKeyValue)
public class TagKeyValue:NSObject,Codable{
    /// tag键
    var tagKey:String?
    /// tag值
    var tagValue:String?



    public override init(){
            super.init()
    }

    enum TagKeyValueCodingKeys: String, CodingKey {
        case tagKey
        case tagValue
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: TagKeyValueCodingKeys.self)
        self.tagKey = try decoderContainer.decode(String?.self, forKey: .tagKey)
        self.tagValue = try decoderContainer.decode(String?.self, forKey: .tagValue)
    }
}
public extension TagKeyValue{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: TagKeyValueCodingKeys.self)
         try encoderContainer.encode(tagKey, forKey: .tagKey)
         try encoderContainer.encode(tagValue, forKey: .tagValue)
    }
}
