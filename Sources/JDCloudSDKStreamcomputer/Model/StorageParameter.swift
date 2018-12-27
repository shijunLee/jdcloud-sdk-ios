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

///  storageParameter
@objc(StorageParameter)
public class StorageParameter:NSObject,Codable{
    /// Id
    var id:Int?
    /// Uid
    var uid:String?
    /// PKey
    var pKey:String?
    /// PValue
    var pValue:String?
    /// StorageId
    var storageId:Int?
    /// Deleted
    var deleted:UInt8?
    /// CreateTime
    var createTime:String?
    /// UpdateTime
    var updateTime:String?



    public override init(){
            super.init()
    }

    enum StorageParameterCodingKeys: String, CodingKey {
        case id
        case uid
        case pKey
        case pValue
        case storageId
        case deleted
        case createTime
        case updateTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StorageParameterCodingKeys.self)
        self.id = try decoderContainer.decode(Int?.self, forKey: .id)
        self.uid = try decoderContainer.decode(String?.self, forKey: .uid)
        self.pKey = try decoderContainer.decode(String?.self, forKey: .pKey)
        self.pValue = try decoderContainer.decode(String?.self, forKey: .pValue)
        self.storageId = try decoderContainer.decode(Int?.self, forKey: .storageId)
        self.deleted = try decoderContainer.decode(UInt8?.self, forKey: .deleted)
        self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
    }
}
public extension StorageParameter{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StorageParameterCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(uid, forKey: .uid)
         try encoderContainer.encode(pKey, forKey: .pKey)
         try encoderContainer.encode(pValue, forKey: .pValue)
         try encoderContainer.encode(storageId, forKey: .storageId)
         try encoderContainer.encode(deleted, forKey: .deleted)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
    }
}
