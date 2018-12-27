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

///  baseContact
@objc(BaseContact)
public class BaseContact:NSObject,Codable{
    /// 联系人id
    /// Required:true
    var referenceId:Int64
    /// 联系人id类型：0,联系人分组id;1,联系人id
    /// Required:true
    var referenceType:Int64



    public  init(referenceId:Int64,referenceType:Int64){
             self.referenceId = referenceId
             self.referenceType = referenceType
    }

    enum BaseContactCodingKeys: String, CodingKey {
        case referenceId
        case referenceType
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: BaseContactCodingKeys.self)
        self.referenceId = try decoderContainer.decode(Int64.self, forKey: .referenceId)
        self.referenceType = try decoderContainer.decode(Int64.self, forKey: .referenceType)
    }
}
public extension BaseContact{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: BaseContactCodingKeys.self)
         try encoderContainer.encode(referenceId, forKey: .referenceId)
         try encoderContainer.encode(referenceType, forKey: .referenceType)
    }
}
