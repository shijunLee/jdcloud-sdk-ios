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

///  userViewInput
@objc(UserViewInput)
public class UserViewInput:NSObject,Codable{
    /// 自定义线路ID
    var viewId:Int?
    /// 自定义线路名称, 最多64个字符
    var viewName:String?
    /// 域名ID
    var domainId:Int?
    /// 用户输入的IP段
    var ipRanges:[String?]?
    /// 是否删除，0:没有删除，1:已删除
    var isDelete:Int?
    /// 创建者
    var creator:String?
    /// 创建时间，格式Unix timestamp，时间单位：秒
    var createTime:Int?
    /// 更新者
    var updator:String?
    /// 更新时间，格式Unix timestamp，时间单位：秒
    var updateTime:Int?



    public override init(){
            super.init()
    }

    enum UserViewInputCodingKeys: String, CodingKey {
        case viewId
        case viewName
        case domainId
        case ipRanges
        case isDelete
        case creator
        case createTime
        case updator
        case updateTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: UserViewInputCodingKeys.self)
        self.viewId = try decoderContainer.decode(Int?.self, forKey: .viewId)
        self.viewName = try decoderContainer.decode(String?.self, forKey: .viewName)
        self.domainId = try decoderContainer.decode(Int?.self, forKey: .domainId)
        self.ipRanges = try decoderContainer.decode([String?]?.self, forKey: .ipRanges)
        self.isDelete = try decoderContainer.decode(Int?.self, forKey: .isDelete)
        self.creator = try decoderContainer.decode(String?.self, forKey: .creator)
        self.createTime = try decoderContainer.decode(Int?.self, forKey: .createTime)
        self.updator = try decoderContainer.decode(String?.self, forKey: .updator)
        self.updateTime = try decoderContainer.decode(Int?.self, forKey: .updateTime)
    }
}
public extension UserViewInput{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: UserViewInputCodingKeys.self)
         try encoderContainer.encode(viewId, forKey: .viewId)
         try encoderContainer.encode(viewName, forKey: .viewName)
         try encoderContainer.encode(domainId, forKey: .domainId)
         try encoderContainer.encode(ipRanges, forKey: .ipRanges)
         try encoderContainer.encode(isDelete, forKey: .isDelete)
         try encoderContainer.encode(creator, forKey: .creator)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(updator, forKey: .updator)
         try encoderContainer.encode(updateTime, forKey: .updateTime)
    }
}