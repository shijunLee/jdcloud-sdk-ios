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

///  batchUpdateWidgetOut
@objc(BatchUpdateWidgetOut)
public class BatchUpdateWidgetOut:NSObject,Codable{
    /// Errors
    var errors:BatchUpdateWidgetError?
    /// Suc
    var suc:Int64?



    public override init(){
            super.init()
    }

    enum BatchUpdateWidgetOutCodingKeys: String, CodingKey {
        case errors
        case suc
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: BatchUpdateWidgetOutCodingKeys.self)
        self.errors = try decoderContainer.decode(BatchUpdateWidgetError?.self, forKey: .errors)
        self.suc = try decoderContainer.decode(Int64?.self, forKey: .suc)
    }
}
public extension BatchUpdateWidgetOut{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: BatchUpdateWidgetOutCodingKeys.self)
         try encoderContainer.encode(errors, forKey: .errors)
         try encoderContainer.encode(suc, forKey: .suc)
    }
}
