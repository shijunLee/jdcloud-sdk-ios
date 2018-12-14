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

   资源编排
   资源编排

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class JdroJDCloudClient :JDCloudClient{
    
    private final var jdroJDCloudClient:JdroJDCloudClient!
    
    init(credential:Credential,sdkEnvironment:SDKEnvironment) {
         self.credential = credential
         self.sdkEnvironment = sdkEnvironment 
    } 
    
    public let userAgent: String = "JdcloudSdkSwift" + "0.0.1" + "jdro" + "v1"
    
    public let serviceName: String = "jdro"
    
    public let version: String = "0.0.1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()
    
    public var httpRequestProtocol: String = "https"
    
    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }
    
    public func describeStacksAsync(request:DescribeStacksRequest,requestComplation:@escaping ExecuteResult<DescribeStacksResult>) throws {
        jdroJDCloudClient = self
        try DescribeStacksExecutor(jdCloudClient: jdroJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeStackResourcesAsync(request:DescribeStackResourcesRequest,requestComplation:@escaping ExecuteResult<DescribeStackResourcesResult>) throws {
        jdroJDCloudClient = self
        try DescribeStackResourcesExecutor(jdCloudClient: jdroJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeChangeSetListAsync(request:DescribeChangeSetListRequest,requestComplation:@escaping ExecuteResult<DescribeChangeSetListResult>) throws {
        jdroJDCloudClient = self
        try DescribeChangeSetListExecutor(jdCloudClient: jdroJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeResourceTypeSpecificationAsync(request:DescribeResourceTypeSpecificationRequest,requestComplation:@escaping ExecuteResult<DescribeResourceTypeSpecificationResult>) throws {
        jdroJDCloudClient = self
        try DescribeResourceTypeSpecificationExecutor(jdCloudClient: jdroJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func validateTemplateAsync(request:ValidateTemplateRequest,requestComplation:@escaping ExecuteResult<ValidateTemplateResult>) throws {
        jdroJDCloudClient = self
        try ValidateTemplateExecutor(jdCloudClient: jdroJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeResourceTypeListAsync(request:DescribeResourceTypeListRequest,requestComplation:@escaping ExecuteResult<DescribeResourceTypeListResult>) throws {
        jdroJDCloudClient = self
        try DescribeResourceTypeListExecutor(jdCloudClient: jdroJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeStackEventsAsync(request:DescribeStackEventsRequest,requestComplation:@escaping ExecuteResult<DescribeStackEventsResult>) throws {
        jdroJDCloudClient = self
        try DescribeStackEventsExecutor(jdCloudClient: jdroJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createChangeSetAsync(request:CreateChangeSetRequest,requestComplation:@escaping ExecuteResult<CreateChangeSetResult>) throws {
        jdroJDCloudClient = self
        try CreateChangeSetExecutor(jdCloudClient: jdroJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createStackAsync(request:CreateStackRequest,requestComplation:@escaping ExecuteResult<CreateStackResult>) throws {
        jdroJDCloudClient = self
        try CreateStackExecutor(jdCloudClient: jdroJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeStackAsync(request:DescribeStackRequest,requestComplation:@escaping ExecuteResult<DescribeStackResult>) throws {
        jdroJDCloudClient = self
        try DescribeStackExecutor(jdCloudClient: jdroJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeStackTemplateAsync(request:DescribeStackTemplateRequest,requestComplation:@escaping ExecuteResult<DescribeStackTemplateResult>) throws {
        jdroJDCloudClient = self
        try DescribeStackTemplateExecutor(jdCloudClient: jdroJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func executeChangeSetAsync(request:ExecuteChangeSetRequest,requestComplation:@escaping ExecuteResult<ExecuteChangeSetResult>) throws {
        jdroJDCloudClient = self
        try ExecuteChangeSetExecutor(jdCloudClient: jdroJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteStackAsync(request:DeleteStackRequest,requestComplation:@escaping ExecuteResult<DeleteStackResult>) throws {
        jdroJDCloudClient = self
        try DeleteStackExecutor(jdCloudClient: jdroJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeChangeSetAsync(request:DescribeChangeSetRequest,requestComplation:@escaping ExecuteResult<DescribeChangeSetResult>) throws {
        jdroJDCloudClient = self
        try DescribeChangeSetExecutor(jdCloudClient: jdroJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    
}


public extension JdroJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "jdro.jdcloud-api.com");
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
                sdkEnvironment = SDKEnvironment(endPoint: "jdro.jdcloud-api.com");
            }
            self.init(credential: GlobalConfig.credential!,sdkEnvironment: sdkEnvironment)
        }

    }
}