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

///  updateWidgetSpec
@objc(UpdateWidgetSpec)
public class UpdateWidgetSpec:NSObject,Codable{
    /// Aggregated
    var aggregated:String?
    /// CreatedTime
    var createdTime:Int64?
    /// DashboardId
    var dashboardId:String?
    /// Metrics
    var metrics:WidgetMetric?
    /// Name
    var name:String?
    /// Position
    var position:WidgetPosition?
    /// Resources
    var resources:WidgetResources?
    /// ServiceCode
    var serviceCode:String?
    /// TopN
    var topN:Int?
    /// Type
    var type:String?
    /// UpdatedTime
    var updatedTime:Int64?
    /// WidgetId
    var widgetId:String?



    public override init(){
            super.init()
    }

    enum UpdateWidgetSpecCodingKeys: String, CodingKey {
        case aggregated
        case createdTime
        case dashboardId
        case metrics
        case name
        case position
        case resources
        case serviceCode
        case topN
        case type
        case updatedTime
        case widgetId
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: UpdateWidgetSpecCodingKeys.self)
        self.aggregated = try decoderContainer.decode(String?.self, forKey: .aggregated)
        self.createdTime = try decoderContainer.decode(Int64?.self, forKey: .createdTime)
        self.dashboardId = try decoderContainer.decode(String?.self, forKey: .dashboardId)
        self.metrics = try decoderContainer.decode(WidgetMetric?.self, forKey: .metrics)
        self.name = try decoderContainer.decode(String?.self, forKey: .name)
        self.position = try decoderContainer.decode(WidgetPosition?.self, forKey: .position)
        self.resources = try decoderContainer.decode(WidgetResources?.self, forKey: .resources)
        self.serviceCode = try decoderContainer.decode(String?.self, forKey: .serviceCode)
        self.topN = try decoderContainer.decode(Int?.self, forKey: .topN)
        self.type = try decoderContainer.decode(String?.self, forKey: .type)
        self.updatedTime = try decoderContainer.decode(Int64?.self, forKey: .updatedTime)
        self.widgetId = try decoderContainer.decode(String?.self, forKey: .widgetId)
    }
}
public extension UpdateWidgetSpec{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: UpdateWidgetSpecCodingKeys.self)
         try encoderContainer.encode(aggregated, forKey: .aggregated)
         try encoderContainer.encode(createdTime, forKey: .createdTime)
         try encoderContainer.encode(dashboardId, forKey: .dashboardId)
         try encoderContainer.encode(metrics, forKey: .metrics)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(position, forKey: .position)
         try encoderContainer.encode(resources, forKey: .resources)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
         try encoderContainer.encode(topN, forKey: .topN)
         try encoderContainer.encode(type, forKey: .type)
         try encoderContainer.encode(updatedTime, forKey: .updatedTime)
         try encoderContainer.encode(widgetId, forKey: .widgetId)
    }
}
