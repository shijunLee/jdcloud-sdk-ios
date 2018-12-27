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

   性能统计
   性能统计相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  missingIndexResult
@objc(MissingIndexResult)
public class MissingIndexResult:NSObject,Codable{
    /// 数据库名
    var db:String?
    /// 表名
    var table:String?
    /// 构成相等谓词的列的逗号分隔列表，谓词的形式如下：&lt;br&gt;table.column &#x3D;constant_value
    var equalityColumns:String?
    /// 用于查询的涵盖列的逗号分隔列表,即创建索引的SQL语句中，Include后的字段
    var inequalityColumns:String?
    /// 构成不等谓词的列的逗号分隔列表，例如以下形式的谓词：&lt;br&gt;table.column &gt; constant_value&lt;br&gt;“&#x3D;”之外的任何比较运算符都表示不相等。
    var includedColumns:String?
    /// 实现此缺失索引后，用户查询可能获得的平均百分比收益。 该值表示如果实现此缺失索引，则查询成本将按此百分比平均下降。
    var avgUserImpact:Double?
    /// 由可能使用了组中建议索引的用户查询所导致的扫描次数。
    var userScans:Int?
    /// 由可能使用了组中建议索引的用户查询所导致的搜索次数。
    var userSeeks:Int?



    public override init(){
            super.init()
    }

    enum MissingIndexResultCodingKeys: String, CodingKey {
        case db
        case table
        case equalityColumns
        case inequalityColumns
        case includedColumns
        case avgUserImpact
        case userScans
        case userSeeks
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: MissingIndexResultCodingKeys.self)
        self.db = try decoderContainer.decode(String?.self, forKey: .db)
        self.table = try decoderContainer.decode(String?.self, forKey: .table)
        self.equalityColumns = try decoderContainer.decode(String?.self, forKey: .equalityColumns)
        self.inequalityColumns = try decoderContainer.decode(String?.self, forKey: .inequalityColumns)
        self.includedColumns = try decoderContainer.decode(String?.self, forKey: .includedColumns)
        self.avgUserImpact = try decoderContainer.decode(Double?.self, forKey: .avgUserImpact)
        self.userScans = try decoderContainer.decode(Int?.self, forKey: .userScans)
        self.userSeeks = try decoderContainer.decode(Int?.self, forKey: .userSeeks)
    }
}
public extension MissingIndexResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: MissingIndexResultCodingKeys.self)
         try encoderContainer.encode(db, forKey: .db)
         try encoderContainer.encode(table, forKey: .table)
         try encoderContainer.encode(equalityColumns, forKey: .equalityColumns)
         try encoderContainer.encode(inequalityColumns, forKey: .inequalityColumns)
         try encoderContainer.encode(includedColumns, forKey: .includedColumns)
         try encoderContainer.encode(avgUserImpact, forKey: .avgUserImpact)
         try encoderContainer.encode(userScans, forKey: .userScans)
         try encoderContainer.encode(userSeeks, forKey: .userSeeks)
    }
}