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

///  whiteList
@objc(WhiteList)
public class WhiteList:NSObject,Codable{
    /// 白名单名称
    var name:String?
    /// IP或IP段，不同的IP/IP段之间用英文逗号分隔，例如0.0.0.0/0,192.168.0.10
    var ips:String?



    public override init(){
            super.init()
    }

    enum WhiteListCodingKeys: String, CodingKey {
        case name
        case ips
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: WhiteListCodingKeys.self)
        self.name = try decoderContainer.decode(String?.self, forKey: .name)
        self.ips = try decoderContainer.decode(String?.self, forKey: .ips)
    }
}
public extension WhiteList{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: WhiteListCodingKeys.self)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(ips, forKey: .ips)
    }
}
