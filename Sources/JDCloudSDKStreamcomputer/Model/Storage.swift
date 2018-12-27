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

///  storage
@objc(Storage)
public class Storage:NSObject,Codable{
    /// Id
    var id:Int?
    /// Name
    var name:String?
    /// Uid
    var uid:String?
    /// Type
    var type:String?
    /// 这个参数有input和ouput两个可选值，取决于创建输入还是输出
    var storageType:String?
    /// UserName
    var userName:String?
    /// CreateTime
    var createTime:String?
    /// UpdateTime
    var updateTime:String?
    /// NamespaceId
    var namespaceId:String?
    /// Deleted
    var deleted:UInt8?
    /// Storage的具体参数。&lt;br&gt;1、创建源类型为流式数据输入时，则需要传输source，topicName，duration，format，delimiter，schema 。&lt;br&gt; 2、创建输出如果输出位置为流数据总线，需要传topicName，format，delimiter，ossFlag，bucketName，directory，objectName。&lt;br&gt;3、创建输出如果输出位置为数据计算服务，则需要传输database，table，ossFlag，bucketName，directory，objectName。
    var storageParameterList:StorageParameter?



    public override init(){
            super.init()
    }

    enum StorageCodingKeys: String, CodingKey {
        case id
        case name
        case uid
        case type
        case storageType
        case userName
        case createTime
        case updateTime
        case namespaceId
        case deleted
        case storageParameterList
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StorageCodingKeys.self)
        self.id = try decoderContainer.decode(Int?.self, forKey: .id)
        self.name = try decoderContainer.decode(String?.self, forKey: .name)
        self.uid = try decoderContainer.decode(String?.self, forKey: .uid)
        self.type = try decoderContainer.decode(String?.self, forKey: .type)
        self.storageType = try decoderContainer.decode(String?.self, forKey: .storageType)
        self.userName = try decoderContainer.decode(String?.self, forKey: .userName)
        self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        self.updateTime = try decoderContainer.decode(String?.self, forKey: .updateTime)
        self.namespaceId = try decoderContainer.decode(String?.self, forKey: .namespaceId)
        self.deleted = try decoderContainer.decode(UInt8?.self, forKey: .deleted)
        self.storageParameterList = try decoderContainer.decode(StorageParameter?.self, forKey: .storageParameterList)
    }
}
public extension Storage{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StorageCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(uid, forKey: .uid)
         try encoderContainer.encode(type, forKey: .type)
         try encoderContainer.encode(storageType, forKey: .storageType)
         try encoderContainer.encode(userName, forKey: .userName)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
         try encoderContainer.encode(namespaceId, forKey: .namespaceId)
         try encoderContainer.encode(deleted, forKey: .deleted)
         try encoderContainer.encode(storageParameterList, forKey: .storageParameterList)
    }
}
