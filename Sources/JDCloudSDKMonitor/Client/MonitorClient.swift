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

   JCLOUD MONITOR API
   monitor API

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class MonitorJDCloudClient :JDCloudClient{
    
    private final var monitorJDCloudClient:MonitorJDCloudClient!
    
    init(credential:Credential,sdkEnvironment:SDKEnvironment) {
         self.credential = credential
         self.sdkEnvironment = sdkEnvironment 
    } 
    
    public let userAgent: String = "JdcloudSdkSwift" + "0.0.1" + "monitor" + "v1"
    
    public let serviceName: String = "monitor"
    
    public let version: String = "0.0.1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()
    
    public var httpRequestProtocol: String = "https"
    
    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }
    
    public func applyTemplateAsync(request:ApplyTemplateRequest,requestComplation:@escaping ExecuteResult<ApplyTemplateResult>) throws {
        monitorJDCloudClient = self
        try ApplyTemplateExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeMetricsForCreateTemplateAsync(request:DescribeMetricsForCreateTemplateRequest,requestComplation:@escaping ExecuteResult<DescribeMetricsForCreateTemplateResult>) throws {
        monitorJDCloudClient = self
        try DescribeMetricsForCreateTemplateExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeStatisticsAsync(request:DescribeStatisticsRequest,requestComplation:@escaping ExecuteResult<DescribeStatisticsResult>) throws {
        monitorJDCloudClient = self
        try DescribeStatisticsExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createProbeTaskAsync(request:CreateProbeTaskRequest,requestComplation:@escaping ExecuteResult<CreateProbeTaskResult>) throws {
        monitorJDCloudClient = self
        try CreateProbeTaskExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeAlarmHistoryAsync(request:DescribeAlarmHistoryRequest,requestComplation:@escaping ExecuteResult<DescribeAlarmHistoryResult>) throws {
        monitorJDCloudClient = self
        try DescribeAlarmHistoryExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func lastDownsampleAsync(request:LastDownsampleRequest,requestComplation:@escaping ExecuteResult<LastDownsampleResult>) throws {
        monitorJDCloudClient = self
        try LastDownsampleExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func probeTaskEnableAsync(request:ProbeTaskEnableRequest,requestComplation:@escaping ExecuteResult<ProbeTaskEnableResult>) throws {
        monitorJDCloudClient = self
        try ProbeTaskEnableExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func batchUpdateWidgetAsync(request:BatchUpdateWidgetRequest,requestComplation:@escaping ExecuteResult<BatchUpdateWidgetResult>) throws {
        monitorJDCloudClient = self
        try BatchUpdateWidgetExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getRuleStateAsync(request:GetRuleStateRequest,requestComplation:@escaping ExecuteResult<GetRuleStateResult>) throws {
        monitorJDCloudClient = self
        try GetRuleStateExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeMetricsForCreateAlarmCmAsync(request:DescribeMetricsForCreateAlarmCmRequest,requestComplation:@escaping ExecuteResult<DescribeMetricsForCreateAlarmCmResult>) throws {
        monitorJDCloudClient = self
        try DescribeMetricsForCreateAlarmCmExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeTemplatesAsync(request:DescribeTemplatesRequest,requestComplation:@escaping ExecuteResult<DescribeTemplatesResult>) throws {
        monitorJDCloudClient = self
        try DescribeTemplatesExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteNamespaceAsync(request:DeleteNamespaceRequest,requestComplation:@escaping ExecuteResult<DeleteNamespaceResult>) throws {
        monitorJDCloudClient = self
        try DeleteNamespaceExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func updateTemplateAsync(request:UpdateTemplateRequest,requestComplation:@escaping ExecuteResult<UpdateTemplateResult>) throws {
        monitorJDCloudClient = self
        try UpdateTemplateExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func disableAlarmAsync(request:DisableAlarmRequest,requestComplation:@escaping ExecuteResult<DisableAlarmResult>) throws {
        monitorJDCloudClient = self
        try DisableAlarmExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createWidgetAsync(request:CreateWidgetRequest,requestComplation:@escaping ExecuteResult<CreateWidgetResult>) throws {
        monitorJDCloudClient = self
        try CreateWidgetExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeMetricsAsync(request:DescribeMetricsRequest,requestComplation:@escaping ExecuteResult<DescribeMetricsResult>) throws {
        monitorJDCloudClient = self
        try DescribeMetricsExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createTemplateAsync(request:CreateTemplateRequest,requestComplation:@escaping ExecuteResult<CreateTemplateResult>) throws {
        monitorJDCloudClient = self
        try CreateTemplateExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeMetricDataAsync(request:DescribeMetricDataRequest,requestComplation:@escaping ExecuteResult<DescribeMetricDataResult>) throws {
        monitorJDCloudClient = self
        try DescribeMetricDataExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getSiteMonitorSourceAsync(request:GetSiteMonitorSourceRequest,requestComplation:@escaping ExecuteResult<GetSiteMonitorSourceResult>) throws {
        monitorJDCloudClient = self
        try GetSiteMonitorSourceExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func updateProbeTaskAsync(request:UpdateProbeTaskRequest,requestComplation:@escaping ExecuteResult<UpdateProbeTaskResult>) throws {
        monitorJDCloudClient = self
        try UpdateProbeTaskExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeIsUserNewAsync(request:DescribeIsUserNewRequest,requestComplation:@escaping ExecuteResult<DescribeIsUserNewResult>) throws {
        monitorJDCloudClient = self
        try DescribeIsUserNewExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeMetricsForStatisticsAsync(request:DescribeMetricsForStatisticsRequest,requestComplation:@escaping ExecuteResult<DescribeMetricsForStatisticsResult>) throws {
        monitorJDCloudClient = self
        try DescribeMetricsForStatisticsExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeAlarmHistoryAllRegionCmAsync(request:DescribeAlarmHistoryAllRegionCmRequest,requestComplation:@escaping ExecuteResult<DescribeAlarmHistoryAllRegionCmResult>) throws {
        monitorJDCloudClient = self
        try DescribeAlarmHistoryAllRegionCmExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeAlarmContactsAsync(request:DescribeAlarmContactsRequest,requestComplation:@escaping ExecuteResult<DescribeAlarmContactsResult>) throws {
        monitorJDCloudClient = self
        try DescribeAlarmContactsExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func batchDescribeMetricDataAsync(request:BatchDescribeMetricDataRequest,requestComplation:@escaping ExecuteResult<BatchDescribeMetricDataResult>) throws {
        monitorJDCloudClient = self
        try BatchDescribeMetricDataExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeMetricDataCmAsync(request:DescribeMetricDataCmRequest,requestComplation:@escaping ExecuteResult<DescribeMetricDataCmResult>) throws {
        monitorJDCloudClient = self
        try DescribeMetricDataCmExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getSiteMonitorAsync(request:GetSiteMonitorRequest,requestComplation:@escaping ExecuteResult<GetSiteMonitorResult>) throws {
        monitorJDCloudClient = self
        try GetSiteMonitorExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func discribeProbesAsync(request:DiscribeProbesRequest,requestComplation:@escaping ExecuteResult<DiscribeProbesResult>) throws {
        monitorJDCloudClient = self
        try DiscribeProbesExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteSiteMonitorAsync(request:DeleteSiteMonitorRequest,requestComplation:@escaping ExecuteResult<DeleteSiteMonitorResult>) throws {
        monitorJDCloudClient = self
        try DeleteSiteMonitorExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeAlarmHistoryAllRegionAsync(request:DescribeAlarmHistoryAllRegionRequest,requestComplation:@escaping ExecuteResult<DescribeAlarmHistoryAllRegionResult>) throws {
        monitorJDCloudClient = self
        try DescribeAlarmHistoryAllRegionExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteDashboardAsync(request:DeleteDashboardRequest,requestComplation:@escaping ExecuteResult<DeleteDashboardResult>) throws {
        monitorJDCloudClient = self
        try DeleteDashboardExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeAlarmsAsync(request:DescribeAlarmsRequest,requestComplation:@escaping ExecuteResult<DescribeAlarmsResult>) throws {
        monitorJDCloudClient = self
        try DescribeAlarmsExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createAlarmAsync(request:CreateAlarmRequest,requestComplation:@escaping ExecuteResult<CreateAlarmResult>) throws {
        monitorJDCloudClient = self
        try CreateAlarmExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeProbeHistoryAsync(request:DescribeProbeHistoryRequest,requestComplation:@escaping ExecuteResult<DescribeProbeHistoryResult>) throws {
        monitorJDCloudClient = self
        try DescribeProbeHistoryExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getWidgetAsync(request:GetWidgetRequest,requestComplation:@escaping ExecuteResult<GetWidgetResult>) throws {
        monitorJDCloudClient = self
        try GetWidgetExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeAlarmHistoryCmAsync(request:DescribeAlarmHistoryCmRequest,requestComplation:@escaping ExecuteResult<DescribeAlarmHistoryCmResult>) throws {
        monitorJDCloudClient = self
        try DescribeAlarmHistoryCmExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteAlarmsCmAsync(request:DeleteAlarmsCmRequest,requestComplation:@escaping ExecuteResult<DeleteAlarmsCmResult>) throws {
        monitorJDCloudClient = self
        try DeleteAlarmsCmExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeMetricsForCreateAlarmAsync(request:DescribeMetricsForCreateAlarmRequest,requestComplation:@escaping ExecuteResult<DescribeMetricsForCreateAlarmResult>) throws {
        monitorJDCloudClient = self
        try DescribeMetricsForCreateAlarmExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func updateSiteMonitorAsync(request:UpdateSiteMonitorRequest,requestComplation:@escaping ExecuteResult<UpdateSiteMonitorResult>) throws {
        monitorJDCloudClient = self
        try UpdateSiteMonitorExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeAllRegionAlarmsAsync(request:DescribeAllRegionAlarmsRequest,requestComplation:@escaping ExecuteResult<DescribeAllRegionAlarmsResult>) throws {
        monitorJDCloudClient = self
        try DescribeAllRegionAlarmsExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeAlarmsByIDAsync(request:DescribeAlarmsByIDRequest,requestComplation:@escaping ExecuteResult<DescribeAlarmsByIDResult>) throws {
        monitorJDCloudClient = self
        try DescribeAlarmsByIDExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func updateAlarmAsync(request:UpdateAlarmRequest,requestComplation:@escaping ExecuteResult<UpdateAlarmResult>) throws {
        monitorJDCloudClient = self
        try UpdateAlarmExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getDashboardAsync(request:GetDashboardRequest,requestComplation:@escaping ExecuteResult<GetDashboardResult>) throws {
        monitorJDCloudClient = self
        try GetDashboardExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func updateWidgetAsync(request:UpdateWidgetRequest,requestComplation:@escaping ExecuteResult<UpdateWidgetResult>) throws {
        monitorJDCloudClient = self
        try UpdateWidgetExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createSiteMonitorAsync(request:CreateSiteMonitorRequest,requestComplation:@escaping ExecuteResult<CreateSiteMonitorResult>) throws {
        monitorJDCloudClient = self
        try CreateSiteMonitorExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func batchEnableAlarmsAsync(request:BatchEnableAlarmsRequest,requestComplation:@escaping ExecuteResult<BatchEnableAlarmsResult>) throws {
        monitorJDCloudClient = self
        try BatchEnableAlarmsExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeObjsByNsUIDAsync(request:DescribeObjsByNsUIDRequest,requestComplation:@escaping ExecuteResult<DescribeObjsByNsUIDResult>) throws {
        monitorJDCloudClient = self
        try DescribeObjsByNsUIDExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getSiteMonitorDataPointsAsync(request:GetSiteMonitorDataPointsRequest,requestComplation:@escaping ExecuteResult<GetSiteMonitorDataPointsResult>) throws {
        monitorJDCloudClient = self
        try GetSiteMonitorDataPointsExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func updateDashboardAsync(request:UpdateDashboardRequest,requestComplation:@escaping ExecuteResult<UpdateDashboardResult>) throws {
        monitorJDCloudClient = self
        try UpdateDashboardExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func enableAlarmAsync(request:EnableAlarmRequest,requestComplation:@escaping ExecuteResult<EnableAlarmResult>) throws {
        monitorJDCloudClient = self
        try EnableAlarmExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createDashboardAsync(request:CreateDashboardRequest,requestComplation:@escaping ExecuteResult<CreateDashboardResult>) throws {
        monitorJDCloudClient = self
        try CreateDashboardExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func batchDisableAlarmsAsync(request:BatchDisableAlarmsRequest,requestComplation:@escaping ExecuteResult<BatchDisableAlarmsResult>) throws {
        monitorJDCloudClient = self
        try BatchDisableAlarmsExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func enableSiteMonitorAsync(request:EnableSiteMonitorRequest,requestComplation:@escaping ExecuteResult<EnableSiteMonitorResult>) throws {
        monitorJDCloudClient = self
        try EnableSiteMonitorExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeAllRegionAlarmsCmAsync(request:DescribeAllRegionAlarmsCmRequest,requestComplation:@escaping ExecuteResult<DescribeAllRegionAlarmsCmResult>) throws {
        monitorJDCloudClient = self
        try DescribeAllRegionAlarmsCmExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteObjAsync(request:DeleteObjRequest,requestComplation:@escaping ExecuteResult<DeleteObjResult>) throws {
        monitorJDCloudClient = self
        try DeleteObjExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeProbeTaskAsync(request:DescribeProbeTaskRequest,requestComplation:@escaping ExecuteResult<DescribeProbeTaskResult>) throws {
        monitorJDCloudClient = self
        try DescribeProbeTaskExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func batchDeleteAlarmsAsync(request:BatchDeleteAlarmsRequest,requestComplation:@escaping ExecuteResult<BatchDeleteAlarmsResult>) throws {
        monitorJDCloudClient = self
        try BatchDeleteAlarmsExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getWidgetMetricsAsync(request:GetWidgetMetricsRequest,requestComplation:@escaping ExecuteResult<GetWidgetMetricsResult>) throws {
        monitorJDCloudClient = self
        try GetWidgetMetricsExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func putAsync(request:PutRequest,requestComplation:@escaping ExecuteResult<PutResult>) throws {
        monitorJDCloudClient = self
        try PutExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func validateSiteMonitorAddressAsync(request:ValidateSiteMonitorAddressRequest,requestComplation:@escaping ExecuteResult<ValidateSiteMonitorAddressResult>) throws {
        monitorJDCloudClient = self
        try ValidateSiteMonitorAddressExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteWidgetAsync(request:DeleteWidgetRequest,requestComplation:@escaping ExecuteResult<DeleteWidgetResult>) throws {
        monitorJDCloudClient = self
        try DeleteWidgetExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createAlarmCmAsync(request:CreateAlarmCmRequest,requestComplation:@escaping ExecuteResult<CreateAlarmCmResult>) throws {
        monitorJDCloudClient = self
        try CreateAlarmCmExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func batchCreateAlarmsAsync(request:BatchCreateAlarmsRequest,requestComplation:@escaping ExecuteResult<BatchCreateAlarmsResult>) throws {
        monitorJDCloudClient = self
        try BatchCreateAlarmsExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeProbeTasksAsync(request:DescribeProbeTasksRequest,requestComplation:@escaping ExecuteResult<DescribeProbeTasksResult>) throws {
        monitorJDCloudClient = self
        try DescribeProbeTasksExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeMetricDataAmAsync(request:DescribeMetricDataAmRequest,requestComplation:@escaping ExecuteResult<DescribeMetricDataAmResult>) throws {
        monitorJDCloudClient = self
        try DescribeMetricDataAmExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getWidgetDataPointsAsync(request:GetWidgetDataPointsRequest,requestComplation:@escaping ExecuteResult<GetWidgetDataPointsResult>) throws {
        monitorJDCloudClient = self
        try GetWidgetDataPointsExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteProbeTaskAsync(request:DeleteProbeTaskRequest,requestComplation:@escaping ExecuteResult<DeleteProbeTaskResult>) throws {
        monitorJDCloudClient = self
        try DeleteProbeTaskExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeAlarmsCmAsync(request:DescribeAlarmsCmRequest,requestComplation:@escaping ExecuteResult<DescribeAlarmsCmResult>) throws {
        monitorJDCloudClient = self
        try DescribeAlarmsCmExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func updateAlarmCmAsync(request:UpdateAlarmCmRequest,requestComplation:@escaping ExecuteResult<UpdateAlarmCmResult>) throws {
        monitorJDCloudClient = self
        try UpdateAlarmCmExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeNamespacesAsync(request:DescribeNamespacesRequest,requestComplation:@escaping ExecuteResult<DescribeNamespacesResult>) throws {
        monitorJDCloudClient = self
        try DescribeNamespacesExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteTemplatesAsync(request:DeleteTemplatesRequest,requestComplation:@escaping ExecuteResult<DeleteTemplatesResult>) throws {
        monitorJDCloudClient = self
        try DeleteTemplatesExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeObjAsync(request:DescribeObjRequest,requestComplation:@escaping ExecuteResult<DescribeObjResult>) throws {
        monitorJDCloudClient = self
        try DescribeObjExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeTemplatesByTemplateIDAsync(request:DescribeTemplatesByTemplateIDRequest,requestComplation:@escaping ExecuteResult<DescribeTemplatesByTemplateIDResult>) throws {
        monitorJDCloudClient = self
        try DescribeTemplatesByTemplateIDExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getWidgetProductsAsync(request:GetWidgetProductsRequest,requestComplation:@escaping ExecuteResult<GetWidgetProductsResult>) throws {
        monitorJDCloudClient = self
        try GetWidgetProductsExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func putMetricDataAsync(request:PutMetricDataRequest,requestComplation:@escaping ExecuteResult<PutMetricDataResult>) throws {
        monitorJDCloudClient = self
        try PutMetricDataExecutor(jdCloudClient: monitorJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    
}


public extension MonitorJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "monitor.jcloud.com");
        }
        self.init(credential: credential,sdkEnvironment: sdkEnvironment)
    }

    convenience init() throws{

        if(GlobalConfig.credential == nil)
        {
            throw SDKError.argumentNullError("credential can not be nil")
        }else{
              var sdkEnvironment:SDKEnvironment
            if(GlobalConfig.sdkEnvironment != nil)
            {
                sdkEnvironment = GlobalConfig.sdkEnvironment!
            }else{
                sdkEnvironment = SDKEnvironment(endPoint: "monitor.jcloud.com");
            }
            self.init(credential: GlobalConfig.credential!,sdkEnvironment: sdkEnvironment)
        }

    }
}