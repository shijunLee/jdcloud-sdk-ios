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

///  objInfo
@objc(ObjInfo)
public class ObjInfo:NSObject,Codable{
    /// metric列表
    var metrics:[String?]?
    /// obj名称
    var objName:String?
    /// obj UID
    var objUid:String?



    public override init(){
            super.init()
    }

    enum ObjInfoCodingKeys: String, CodingKey {
        case metrics
        case objName
        case objUid
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ObjInfoCodingKeys.self)
        self.metrics = try decoderContainer.decode([String?]?.self, forKey: .metrics)
        self.objName = try decoderContainer.decode(String?.self, forKey: .objName)
        self.objUid = try decoderContainer.decode(String?.self, forKey: .objUid)
    }
}
public extension ObjInfo{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ObjInfoCodingKeys.self)
         try encoderContainer.encode(metrics, forKey: .metrics)
         try encoderContainer.encode(objName, forKey: .objName)
         try encoderContainer.encode(objUid, forKey: .objUid)
    }
}
