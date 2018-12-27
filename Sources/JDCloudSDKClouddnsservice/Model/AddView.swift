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

///  addView
@objc(AddView)
public class AddView:NSObject,Codable{
    /// 域名ID
    /// Required:true
    var domainId:Int
    /// 主域名
    /// Required:true
    var domainName:String
    /// 自定义线路名称, 最多64个字符
    /// Required:true
    var viewName:String
    /// 用户输入的此线路的ip段。&lt;br&gt;
      /// ip段支持1.2.3.4-5.6.7.8和1.2.3.4/16两种格式。
      /// 
    /// Required:true
    var ipRanges:[String?]



    public  init(domainId:Int,domainName:String,viewName:String,ipRanges:[String?]){
             self.domainId = domainId
             self.domainName = domainName
             self.viewName = viewName
             self.ipRanges = ipRanges
    }

    enum AddViewCodingKeys: String, CodingKey {
        case domainId
        case domainName
        case viewName
        case ipRanges
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AddViewCodingKeys.self)
        self.domainId = try decoderContainer.decode(Int.self, forKey: .domainId)
        self.domainName = try decoderContainer.decode(String.self, forKey: .domainName)
        self.viewName = try decoderContainer.decode(String.self, forKey: .viewName)
        self.ipRanges = try decoderContainer.decode([String?].self, forKey: .ipRanges)
    }
}
public extension AddView{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AddViewCodingKeys.self)
         try encoderContainer.encode(domainId, forKey: .domainId)
         try encoderContainer.encode(domainName, forKey: .domainName)
         try encoderContainer.encode(viewName, forKey: .viewName)
         try encoderContainer.encode(ipRanges, forKey: .ipRanges)
    }
}
