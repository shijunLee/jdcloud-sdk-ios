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

   API网关
   API网关相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore

public class ApigatewayJDCloudClient :JDCloudClient{
    
    private final var apigatewayJDCloudClient:ApigatewayJDCloudClient!
    
    init(credential:Credential,sdkEnvironment:SDKEnvironment) {
         self.credential = credential
         self.sdkEnvironment = sdkEnvironment 
    } 
    
    public let userAgent: String = "JdcloudSdkSwift" + "0.0.1" + "apigateway" + "v1"
    
    public let serviceName: String = "apigateway"
    
    public let version: String = "0.0.1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()
    
    public var httpRequestProtocol: String = "https"
    
    public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }
    
    public func checkGroupNameExistAsync(request:CheckGroupNameExistRequest,requestComplation:@escaping ExecuteResult<CheckGroupNameExistResult>) throws {
        apigatewayJDCloudClient = self
        try CheckGroupNameExistExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createApisAsync(request:CreateApisRequest,requestComplation:@escaping ExecuteResult<CreateApisResult>) throws {
        apigatewayJDCloudClient = self
        try CreateApisExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func updateRateLimitPolicyAsync(request:UpdateRateLimitPolicyRequest,requestComplation:@escaping ExecuteResult<UpdateRateLimitPolicyResult>) throws {
        apigatewayJDCloudClient = self
        try UpdateRateLimitPolicyExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func bindGroupKeyAsync(request:BindGroupKeyRequest,requestComplation:@escaping ExecuteResult<BindGroupKeyResult>) throws {
        apigatewayJDCloudClient = self
        try BindGroupKeyExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func validateBodyParameterAsync(request:ValidateBodyParameterRequest,requestComplation:@escaping ExecuteResult<ValidateBodyParameterResult>) throws {
        apigatewayJDCloudClient = self
        try ValidateBodyParameterExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func checkAuthExistAsync(request:CheckAuthExistRequest,requestComplation:@escaping ExecuteResult<CheckAuthExistResult>) throws {
        apigatewayJDCloudClient = self
        try CheckAuthExistExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func offlineAsync(request:OfflineRequest,requestComplation:@escaping ExecuteResult<OfflineResult>) throws {
        apigatewayJDCloudClient = self
        try OfflineExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryAccessKeyAsync(request:QueryAccessKeyRequest,requestComplation:@escaping ExecuteResult<QueryAccessKeyResult>) throws {
        apigatewayJDCloudClient = self
        try QueryAccessKeyExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func bindGroupAuthAsync(request:BindGroupAuthRequest,requestComplation:@escaping ExecuteResult<BindGroupAuthResult>) throws {
        apigatewayJDCloudClient = self
        try BindGroupAuthExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getRevisionIdsAsync(request:GetRevisionIdsRequest,requestComplation:@escaping ExecuteResult<GetRevisionIdsResult>) throws {
        apigatewayJDCloudClient = self
        try GetRevisionIdsExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func downloadSdkAsync(request:DownloadSdkRequest,requestComplation:@escaping ExecuteResult<DownloadSdkResult>) throws {
        apigatewayJDCloudClient = self
        try DownloadSdkExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func kmsUpdateKeyAsync(request:KmsUpdateKeyRequest,requestComplation:@escaping ExecuteResult<KmsUpdateKeyResult>) throws {
        apigatewayJDCloudClient = self
        try KmsUpdateKeyExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func userDomainDeleteAsync(request:UserDomainDeleteRequest,requestComplation:@escaping ExecuteResult<UserDomainDeleteResult>) throws {
        apigatewayJDCloudClient = self
        try UserDomainDeleteExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func checkKeyExistAsync(request:CheckKeyExistRequest,requestComplation:@escaping ExecuteResult<CheckKeyExistResult>) throws {
        apigatewayJDCloudClient = self
        try CheckKeyExistExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func kmsKeysListAsync(request:KmsKeysListRequest,requestComplation:@escaping ExecuteResult<KmsKeysListResult>) throws {
        apigatewayJDCloudClient = self
        try KmsKeysListExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryAccessAuthsAsync(request:QueryAccessAuthsRequest,requestComplation:@escaping ExecuteResult<QueryAccessAuthsResult>) throws {
        apigatewayJDCloudClient = self
        try QueryAccessAuthsExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryRevisionAsync(request:QueryRevisionRequest,requestComplation:@escaping ExecuteResult<QueryRevisionResult>) throws {
        apigatewayJDCloudClient = self
        try QueryRevisionExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func delAccessAuthAsync(request:DelAccessAuthRequest,requestComplation:@escaping ExecuteResult<DelAccessAuthResult>) throws {
        apigatewayJDCloudClient = self
        try DelAccessAuthExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func modifyApiGroupAttributeAsync(request:ModifyApiGroupAttributeRequest,requestComplation:@escaping ExecuteResult<ModifyApiGroupAttributeResult>) throws {
        apigatewayJDCloudClient = self
        try ModifyApiGroupAttributeExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func checkPolicyNameAsync(request:CheckPolicyNameRequest,requestComplation:@escaping ExecuteResult<CheckPolicyNameResult>) throws {
        apigatewayJDCloudClient = self
        try CheckPolicyNameExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryRateLimitPolicyAsync(request:QueryRateLimitPolicyRequest,requestComplation:@escaping ExecuteResult<QueryRateLimitPolicyResult>) throws {
        apigatewayJDCloudClient = self
        try QueryRateLimitPolicyExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteApiGroupsAsync(request:DeleteApiGroupsRequest,requestComplation:@escaping ExecuteResult<DeleteApiGroupsResult>) throws {
        apigatewayJDCloudClient = self
        try DeleteApiGroupsExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func updateApiAsync(request:UpdateApiRequest,requestComplation:@escaping ExecuteResult<UpdateApiResult>) throws {
        apigatewayJDCloudClient = self
        try UpdateApiExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteAccessAuthIdsAsync(request:DeleteAccessAuthIdsRequest,requestComplation:@escaping ExecuteResult<DeleteAccessAuthIdsResult>) throws {
        apigatewayJDCloudClient = self
        try DeleteAccessAuthIdsExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func delApiAsync(request:DelApiRequest,requestComplation:@escaping ExecuteResult<DelApiResult>) throws {
        apigatewayJDCloudClient = self
        try DelApiExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeRevisionsAsync(request:DescribeRevisionsRequest,requestComplation:@escaping ExecuteResult<DescribeRevisionsResult>) throws {
        apigatewayJDCloudClient = self
        try DescribeRevisionsExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createApiGroupAsync(request:CreateApiGroupRequest,requestComplation:@escaping ExecuteResult<CreateApiGroupResult>) throws {
        apigatewayJDCloudClient = self
        try CreateApiGroupExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func kmsQueryKeyInfoAsync(request:KmsQueryKeyInfoRequest,requestComplation:@escaping ExecuteResult<KmsQueryKeyInfoResult>) throws {
        apigatewayJDCloudClient = self
        try KmsQueryKeyInfoExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func updateAccessKeyAsync(request:UpdateAccessKeyRequest,requestComplation:@escaping ExecuteResult<UpdateAccessKeyResult>) throws {
        apigatewayJDCloudClient = self
        try UpdateAccessKeyExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryAccessAuthAsync(request:QueryAccessAuthRequest,requestComplation:@escaping ExecuteResult<QueryAccessAuthResult>) throws {
        apigatewayJDCloudClient = self
        try QueryAccessAuthExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteApisAsync(request:DeleteApisRequest,requestComplation:@escaping ExecuteResult<DeleteApisResult>) throws {
        apigatewayJDCloudClient = self
        try DeleteApisExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryKeyGroupListAsync(request:QueryKeyGroupListRequest,requestComplation:@escaping ExecuteResult<QueryKeyGroupListResult>) throws {
        apigatewayJDCloudClient = self
        try QueryKeyGroupListExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func kmsCreateKeyAsync(request:KmsCreateKeyRequest,requestComplation:@escaping ExecuteResult<KmsCreateKeyResult>) throws {
        apigatewayJDCloudClient = self
        try KmsCreateKeyExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func authorizedApiGroupListAsync(request:AuthorizedApiGroupListRequest,requestComplation:@escaping ExecuteResult<AuthorizedApiGroupListResult>) throws {
        apigatewayJDCloudClient = self
        try AuthorizedApiGroupListExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryBindGroupKeyAsync(request:QueryBindGroupKeyRequest,requestComplation:@escaping ExecuteResult<QueryBindGroupKeyResult>) throws {
        apigatewayJDCloudClient = self
        try QueryBindGroupKeyExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func modifyRevisionAsync(request:ModifyRevisionRequest,requestComplation:@escaping ExecuteResult<ModifyRevisionResult>) throws {
        apigatewayJDCloudClient = self
        try ModifyRevisionExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func unbindApiAsync(request:UnbindApiRequest,requestComplation:@escaping ExecuteResult<UnbindApiResult>) throws {
        apigatewayJDCloudClient = self
        try UnbindApiExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeApiGroupMonitorAsync(request:DescribeApiGroupMonitorRequest,requestComplation:@escaping ExecuteResult<DescribeApiGroupMonitorResult>) throws {
        apigatewayJDCloudClient = self
        try DescribeApiGroupMonitorExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryBindGroupPolicyAsync(request:QueryBindGroupPolicyRequest,requestComplation:@escaping ExecuteResult<QueryBindGroupPolicyResult>) throws {
        apigatewayJDCloudClient = self
        try QueryBindGroupPolicyExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func delAccessKeyAsync(request:DelAccessKeyRequest,requestComplation:@escaping ExecuteResult<DelAccessKeyResult>) throws {
        apigatewayJDCloudClient = self
        try DelAccessKeyExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeDeploymentAsync(request:DescribeDeploymentRequest,requestComplation:@escaping ExecuteResult<DescribeDeploymentResult>) throws {
        apigatewayJDCloudClient = self
        try DescribeDeploymentExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func bindApiAsync(request:BindApiRequest,requestComplation:@escaping ExecuteResult<BindApiResult>) throws {
        apigatewayJDCloudClient = self
        try BindApiExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func checkUserBizPermissionAsync(request:CheckUserBizPermissionRequest,requestComplation:@escaping ExecuteResult<CheckUserBizPermissionResult>) throws {
        apigatewayJDCloudClient = self
        try CheckUserBizPermissionExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func kmsResetKeyAsync(request:KmsResetKeyRequest,requestComplation:@escaping ExecuteResult<KmsResetKeyResult>) throws {
        apigatewayJDCloudClient = self
        try KmsResetKeyExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func openServiceAsync(request:OpenServiceRequest,requestComplation:@escaping ExecuteResult<OpenServiceResult>) throws {
        apigatewayJDCloudClient = self
        try OpenServiceExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getGroupNamesAsync(request:GetGroupNamesRequest,requestComplation:@escaping ExecuteResult<GetGroupNamesResult>) throws {
        apigatewayJDCloudClient = self
        try GetGroupNamesExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createAccessAuthAsync(request:CreateAccessAuthRequest,requestComplation:@escaping ExecuteResult<CreateAccessAuthResult>) throws {
        apigatewayJDCloudClient = self
        try CreateAccessAuthExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func querySourceApisAsync(request:QuerySourceApisRequest,requestComplation:@escaping ExecuteResult<QuerySourceApisResult>) throws {
        apigatewayJDCloudClient = self
        try QuerySourceApisExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeApiGroupAsync(request:DescribeApiGroupRequest,requestComplation:@escaping ExecuteResult<DescribeApiGroupResult>) throws {
        apigatewayJDCloudClient = self
        try DescribeApiGroupExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func userDomainCreateAsync(request:UserDomainCreateRequest,requestComplation:@escaping ExecuteResult<UserDomainCreateResult>) throws {
        apigatewayJDCloudClient = self
        try UserDomainCreateExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func kmsDeleteKeysAsync(request:KmsDeleteKeysRequest,requestComplation:@escaping ExecuteResult<KmsDeleteKeysResult>) throws {
        apigatewayJDCloudClient = self
        try KmsDeleteKeysExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createAccessKeyAsync(request:CreateAccessKeyRequest,requestComplation:@escaping ExecuteResult<CreateAccessKeyResult>) throws {
        apigatewayJDCloudClient = self
        try CreateAccessKeyExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func generateAsync(request:GenerateRequest,requestComplation:@escaping ExecuteResult<GenerateResult>) throws {
        apigatewayJDCloudClient = self
        try GenerateExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeResourceDetailAsync(request:DescribeResourceDetailRequest,requestComplation:@escaping ExecuteResult<DescribeResourceDetailResult>) throws {
        apigatewayJDCloudClient = self
        try DescribeResourceDetailExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func checkRevisionExistAsync(request:CheckRevisionExistRequest,requestComplation:@escaping ExecuteResult<CheckRevisionExistResult>) throws {
        apigatewayJDCloudClient = self
        try CheckRevisionExistExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func updateAccessAuthAsync(request:UpdateAccessAuthRequest,requestComplation:@escaping ExecuteResult<UpdateAccessAuthResult>) throws {
        apigatewayJDCloudClient = self
        try UpdateAccessAuthExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryGenerateAsync(request:QueryGenerateRequest,requestComplation:@escaping ExecuteResult<QueryGenerateResult>) throws {
        apigatewayJDCloudClient = self
        try QueryGenerateExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeApiAsync(request:DescribeApiRequest,requestComplation:@escaping ExecuteResult<DescribeApiResult>) throws {
        apigatewayJDCloudClient = self
        try DescribeApiExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryPolicyGroupListAsync(request:QueryPolicyGroupListRequest,requestComplation:@escaping ExecuteResult<QueryPolicyGroupListResult>) throws {
        apigatewayJDCloudClient = self
        try QueryPolicyGroupListExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeApiGroupsMonitorAsync(request:DescribeApiGroupsMonitorRequest,requestComplation:@escaping ExecuteResult<DescribeApiGroupsMonitorResult>) throws {
        apigatewayJDCloudClient = self
        try DescribeApiGroupsMonitorExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryBindGroupAuthAsync(request:QueryBindGroupAuthRequest,requestComplation:@escaping ExecuteResult<QueryBindGroupAuthResult>) throws {
        apigatewayJDCloudClient = self
        try QueryBindGroupAuthExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeApiGroupsAsync(request:DescribeApiGroupsRequest,requestComplation:@escaping ExecuteResult<DescribeApiGroupsResult>) throws {
        apigatewayJDCloudClient = self
        try DescribeApiGroupsExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createRateLimitPolicyAsync(request:CreateRateLimitPolicyRequest,requestComplation:@escaping ExecuteResult<CreateRateLimitPolicyResult>) throws {
        apigatewayJDCloudClient = self
        try CreateRateLimitPolicyExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func createRevisionAsync(request:CreateRevisionRequest,requestComplation:@escaping ExecuteResult<CreateRevisionResult>) throws {
        apigatewayJDCloudClient = self
        try CreateRevisionExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryAuthGroupListAsync(request:QueryAuthGroupListRequest,requestComplation:@escaping ExecuteResult<QueryAuthGroupListResult>) throws {
        apigatewayJDCloudClient = self
        try QueryAuthGroupListExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func bindGroupPolicyAsync(request:BindGroupPolicyRequest,requestComplation:@escaping ExecuteResult<BindGroupPolicyResult>) throws {
        apigatewayJDCloudClient = self
        try BindGroupPolicyExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func userDomainsListAsync(request:UserDomainsListRequest,requestComplation:@escaping ExecuteResult<UserDomainsListResult>) throws {
        apigatewayJDCloudClient = self
        try UserDomainsListExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func importApiAsync(request:ImportApiRequest,requestComplation:@escaping ExecuteResult<ImportApiResult>) throws {
        apigatewayJDCloudClient = self
        try ImportApiExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deployAsync(request:DeployRequest,requestComplation:@escaping ExecuteResult<DeployResult>) throws {
        apigatewayJDCloudClient = self
        try DeployExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func getInternationalizationAsync(request:GetInternationalizationRequest,requestComplation:@escaping ExecuteResult<GetInternationalizationResult>) throws {
        apigatewayJDCloudClient = self
        try GetInternationalizationExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryAccessKeysAsync(request:QueryAccessKeysRequest,requestComplation:@escaping ExecuteResult<QueryAccessKeysResult>) throws {
        apigatewayJDCloudClient = self
        try QueryAccessKeysExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryRateLimitPoliciesAsync(request:QueryRateLimitPoliciesRequest,requestComplation:@escaping ExecuteResult<QueryRateLimitPoliciesResult>) throws {
        apigatewayJDCloudClient = self
        try QueryRateLimitPoliciesExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func describeDeploymentsAsync(request:DescribeDeploymentsRequest,requestComplation:@escaping ExecuteResult<DescribeDeploymentsResult>) throws {
        apigatewayJDCloudClient = self
        try DescribeDeploymentsExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteRevisionAsync(request:DeleteRevisionRequest,requestComplation:@escaping ExecuteResult<DeleteRevisionResult>) throws {
        apigatewayJDCloudClient = self
        try DeleteRevisionExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryApiAsync(request:QueryApiRequest,requestComplation:@escaping ExecuteResult<QueryApiResult>) throws {
        apigatewayJDCloudClient = self
        try QueryApiExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deletePoliciesAsync(request:DeletePoliciesRequest,requestComplation:@escaping ExecuteResult<DeletePoliciesResult>) throws {
        apigatewayJDCloudClient = self
        try DeletePoliciesExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryKeyBindedGroupListAsync(request:QueryKeyBindedGroupListRequest,requestComplation:@escaping ExecuteResult<QueryKeyBindedGroupListResult>) throws {
        apigatewayJDCloudClient = self
        try QueryKeyBindedGroupListExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func delRateLimitPolicyAsync(request:DelRateLimitPolicyRequest,requestComplation:@escaping ExecuteResult<DelRateLimitPolicyResult>) throws {
        apigatewayJDCloudClient = self
        try DelRateLimitPolicyExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func checkApiNameExistAsync(request:CheckApiNameExistRequest,requestComplation:@escaping ExecuteResult<CheckApiNameExistResult>) throws {
        apigatewayJDCloudClient = self
        try CheckApiNameExistExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteAccessKeysAsync(request:DeleteAccessKeysRequest,requestComplation:@escaping ExecuteResult<DeleteAccessKeysResult>) throws {
        apigatewayJDCloudClient = self
        try DeleteAccessKeysExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func queryApisAsync(request:QueryApisRequest,requestComplation:@escaping ExecuteResult<QueryApisResult>) throws {
        apigatewayJDCloudClient = self
        try QueryApisExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func deleteApiGroupAsync(request:DeleteApiGroupRequest,requestComplation:@escaping ExecuteResult<DeleteApiGroupResult>) throws {
        apigatewayJDCloudClient = self
        try DeleteApiGroupExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    public func cloneApisAsync(request:CloneApisRequest,requestComplation:@escaping ExecuteResult<CloneApisResult>) throws {
        apigatewayJDCloudClient = self
        try CloneApisExecutor(jdCloudClient: apigatewayJDCloudClient).executeAsync(request: request){(statusCode,result, error,data) in
             requestComplation(statusCode,result,error,data)
        }
    } 
    
}


public extension ApigatewayJDCloudClient{

    convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "apigateway.jdcloud-api.com");
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
                sdkEnvironment = SDKEnvironment(endPoint: "apigateway.jdcloud-api.com");
            }
            self.init(credential: GlobalConfig.credential!,sdkEnvironment: sdkEnvironment)
        }

    }
}