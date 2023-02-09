// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: api/client/v2/report_service.proto

#define INTERNAL_SUPPRESS_PROTOBUF_FIELD_DEPRECATION
#include "api/client/v2/report_service.pb.h"

#include <utility>

#include <google/protobuf/stubs/common.h>
#include <google/protobuf/stubs/once.h>
#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/wire_format_lite_inl.h>
#include <google/protobuf/descriptor.h>
#include <google/protobuf/generated_message_reflection.h>
#include <google/protobuf/reflection_ops.h>
#include <google/protobuf/wire_format.h>
#include "BattlenetRpcErrorCodes.h"
// @@protoc_insertion_point(includes)

namespace bgs {
namespace protocol {
namespace report {
namespace v2 {

namespace {

const ::google::protobuf::Descriptor* SubmitReportRequest_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  SubmitReportRequest_reflection_ = NULL;
struct SubmitReportRequestOneofInstance {
  const ::bgs::protocol::report::v2::UserOptions* user_options_;
  const ::bgs::protocol::report::v2::ClubOptions* club_options_;
  const ::bgs::protocol::report::v2::EntityOptions* entity_options_;
}* SubmitReportRequest_default_oneof_instance_ = NULL;
const ::google::protobuf::ServiceDescriptor* ReportService_descriptor_ = NULL;

}  // namespace

void protobuf_AssignDesc_api_2fclient_2fv2_2freport_5fservice_2eproto() {
  protobuf_AddDesc_api_2fclient_2fv2_2freport_5fservice_2eproto();
  const ::google::protobuf::FileDescriptor* file =
    ::google::protobuf::DescriptorPool::generated_pool()->FindFileByName(
      "api/client/v2/report_service.proto");
  GOOGLE_CHECK(file != NULL);
  SubmitReportRequest_descriptor_ = file->message_type(0);
  static const int SubmitReportRequest_offsets_[6] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SubmitReportRequest, agent_id_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SubmitReportRequest, user_description_),
    PROTO2_GENERATED_DEFAULT_ONEOF_FIELD_OFFSET(SubmitReportRequest_default_oneof_instance_, user_options_),
    PROTO2_GENERATED_DEFAULT_ONEOF_FIELD_OFFSET(SubmitReportRequest_default_oneof_instance_, club_options_),
    PROTO2_GENERATED_DEFAULT_ONEOF_FIELD_OFFSET(SubmitReportRequest_default_oneof_instance_, entity_options_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SubmitReportRequest, type_),
  };
  SubmitReportRequest_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      SubmitReportRequest_descriptor_,
      SubmitReportRequest::default_instance_,
      SubmitReportRequest_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SubmitReportRequest, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SubmitReportRequest, _unknown_fields_),
      -1,
      SubmitReportRequest_default_oneof_instance_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(SubmitReportRequest, _oneof_case_[0]),
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(SubmitReportRequest));
  ReportService_descriptor_ = file->service(0);
}

namespace {

GOOGLE_PROTOBUF_DECLARE_ONCE(protobuf_AssignDescriptors_once_);
inline void protobuf_AssignDescriptorsOnce() {
  ::google::protobuf::GoogleOnceInit(&protobuf_AssignDescriptors_once_,
                 &protobuf_AssignDesc_api_2fclient_2fv2_2freport_5fservice_2eproto);
}

void protobuf_RegisterTypes(const ::std::string&) {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    SubmitReportRequest_descriptor_, &SubmitReportRequest::default_instance());
}

}  // namespace

void protobuf_ShutdownFile_api_2fclient_2fv2_2freport_5fservice_2eproto() {
  delete SubmitReportRequest::default_instance_;
  delete SubmitReportRequest_default_oneof_instance_;
  delete SubmitReportRequest_reflection_;
}

void protobuf_AddDesc_api_2fclient_2fv2_2freport_5fservice_2eproto() {
  static bool already_here = false;
  if (already_here) return;
  already_here = true;
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  ::bgs::protocol::account::v1::protobuf_AddDesc_account_5ftypes_2eproto();
  ::bgs::protocol::report::v2::protobuf_AddDesc_api_2fclient_2fv2_2freport_5ftypes_2eproto();
  ::bgs::protocol::protobuf_AddDesc_rpc_5ftypes_2eproto();
  ::google::protobuf::DescriptorPool::InternalAddGeneratedFile(
    "\n\"api/client/v2/report_service.proto\022\026bg"
    "s.protocol.report.v2\032\023account_types.prot"
    "o\032 api/client/v2/report_types.proto\032\017rpc"
    "_types.proto\"\250\002\n\023SubmitReportRequest\0224\n\010"
    "agent_id\030\001 \001(\0132\".bgs.protocol.account.v1"
    ".AccountId\022\030\n\020user_description\030\002 \001(\t\022;\n\014"
    "user_options\030\n \001(\0132#.bgs.protocol.report"
    ".v2.UserOptionsH\000\022;\n\014club_options\030\013 \001(\0132"
    "#.bgs.protocol.report.v2.ClubOptionsH\000\022\?"
    "\n\016entity_options\030\024 \001(\0132%.bgs.protocol.re"
    "port.v2.EntityOptionsH\000B\006\n\004type2\245\001\n\rRepo"
    "rtService\022Y\n\014SubmitReport\022+.bgs.protocol"
    ".report.v2.SubmitReportRequest\032\024.bgs.pro"
    "tocol.NoData\"\006\202\371+\002\010\001\0329\202\371+/\n%bnet.protoco"
    "l.report.v2.ReportService*\006report\212\371+\002\020\001B"
    "\005H\002\200\001\000", 606);
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedFile(
    "api/client/v2/report_service.proto", &protobuf_RegisterTypes);
  SubmitReportRequest::default_instance_ = new SubmitReportRequest();
  SubmitReportRequest_default_oneof_instance_ = new SubmitReportRequestOneofInstance;
  SubmitReportRequest::default_instance_->InitAsDefaultInstance();
  ::google::protobuf::internal::OnShutdown(&protobuf_ShutdownFile_api_2fclient_2fv2_2freport_5fservice_2eproto);
}

// Force AddDescriptors() to be called at static initialization time.
struct StaticDescriptorInitializer_api_2fclient_2fv2_2freport_5fservice_2eproto {
  StaticDescriptorInitializer_api_2fclient_2fv2_2freport_5fservice_2eproto() {
    protobuf_AddDesc_api_2fclient_2fv2_2freport_5fservice_2eproto();
  }
} static_descriptor_initializer_api_2fclient_2fv2_2freport_5fservice_2eproto_;
// ===================================================================

#ifndef _MSC_VER
const int SubmitReportRequest::kAgentIdFieldNumber;
const int SubmitReportRequest::kUserDescriptionFieldNumber;
const int SubmitReportRequest::kUserOptionsFieldNumber;
const int SubmitReportRequest::kClubOptionsFieldNumber;
const int SubmitReportRequest::kEntityOptionsFieldNumber;
#endif  // !_MSC_VER

SubmitReportRequest::SubmitReportRequest()
  : ::google::protobuf::Message() {
  SharedCtor();
  // @@protoc_insertion_point(constructor:bgs.protocol.report.v2.SubmitReportRequest)
}

void SubmitReportRequest::InitAsDefaultInstance() {
  agent_id_ = const_cast< ::bgs::protocol::account::v1::AccountId*>(&::bgs::protocol::account::v1::AccountId::default_instance());
  SubmitReportRequest_default_oneof_instance_->user_options_ = const_cast< ::bgs::protocol::report::v2::UserOptions*>(&::bgs::protocol::report::v2::UserOptions::default_instance());
  SubmitReportRequest_default_oneof_instance_->club_options_ = const_cast< ::bgs::protocol::report::v2::ClubOptions*>(&::bgs::protocol::report::v2::ClubOptions::default_instance());
  SubmitReportRequest_default_oneof_instance_->entity_options_ = const_cast< ::bgs::protocol::report::v2::EntityOptions*>(&::bgs::protocol::report::v2::EntityOptions::default_instance());
}

SubmitReportRequest::SubmitReportRequest(const SubmitReportRequest& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
  // @@protoc_insertion_point(copy_constructor:bgs.protocol.report.v2.SubmitReportRequest)
}

void SubmitReportRequest::SharedCtor() {
  ::google::protobuf::internal::GetEmptyString();
  _cached_size_ = 0;
  agent_id_ = NULL;
  user_description_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  clear_has_type();
}

SubmitReportRequest::~SubmitReportRequest() {
  // @@protoc_insertion_point(destructor:bgs.protocol.report.v2.SubmitReportRequest)
  SharedDtor();
}

void SubmitReportRequest::SharedDtor() {
  if (user_description_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    delete user_description_;
  }
  if (has_type()) {
    clear_type();
  }
  if (this != default_instance_) {
    delete agent_id_;
  }
}

void SubmitReportRequest::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* SubmitReportRequest::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return SubmitReportRequest_descriptor_;
}

const SubmitReportRequest& SubmitReportRequest::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_api_2fclient_2fv2_2freport_5fservice_2eproto();
  return *default_instance_;
}

SubmitReportRequest* SubmitReportRequest::default_instance_ = NULL;

SubmitReportRequest* SubmitReportRequest::New() const {
  return new SubmitReportRequest;
}

void SubmitReportRequest::clear_type() {
  switch(type_case()) {
    case kUserOptions: {
      delete type_.user_options_;
      break;
    }
    case kClubOptions: {
      delete type_.club_options_;
      break;
    }
    case kEntityOptions: {
      delete type_.entity_options_;
      break;
    }
    case TYPE_NOT_SET: {
      break;
    }
  }
  _oneof_case_[0] = TYPE_NOT_SET;
}

void SubmitReportRequest::Swap(SubmitReportRequest* other) {
  if (other != this) {
    GetReflection()->Swap(this, other);}
}

::google::protobuf::Metadata SubmitReportRequest::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = SubmitReportRequest_descriptor_;
  metadata.reflection = SubmitReportRequest_reflection_;
  return metadata;
}

// ===================================================================

ReportService::ReportService(bool use_original_hash) : ServiceBase(use_original_hash ? OriginalHash::value : NameHash::value) {
}

ReportService::~ReportService() {
}

google::protobuf::ServiceDescriptor const* ReportService::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return ReportService_descriptor_;
}

void ReportService::CallServerMethod(uint32 token, uint32 methodId, MessageBuffer buffer) {
  switch(methodId & 0x3FFFFFFF) {
    case 1:
      ParseAndHandleSubmitReport(token, methodId, buffer);
      break;
    default:
      LogInvalidMethod(methodId);
      SendResponse(service_hash_, methodId, token, ERROR_RPC_INVALID_METHOD);
      break;
    }
}

uint32 ReportService::HandleSubmitReport(::bgs::protocol::report::v2::SubmitReportRequest const* request, ::bgs::protocol::NoData* /*response*/, std::function<void(ServiceBase*, uint32, ::google::protobuf::Message const*)>& /*continuation*/) {
  LogUnimplementedServerMethod("ReportService.SubmitReport", request);
  return ERROR_RPC_NOT_IMPLEMENTED;
}

void ReportService::ParseAndHandleSubmitReport(uint32 token, uint32 methodId, MessageBuffer& buffer) {
  ::bgs::protocol::report::v2::SubmitReportRequest request;
  if (!request.ParseFromArray(buffer.GetReadPointer(), buffer.GetActiveSize())) {
    LogFailedParsingRequest("ReportService.SubmitReport");
    SendResponse(service_hash_, methodId, token, ERROR_RPC_MALFORMED_REQUEST);
    return;
  }
  LogCallServerMethod("ReportService.SubmitReport", "bgs.protocol.report.v2.SubmitReportRequest", &request);
  std::function<void(ServiceBase*, uint32, ::google::protobuf::Message const*)> continuation = CreateServerContinuation(token, methodId, "ReportService.SubmitReport", ::bgs::protocol::NoData::descriptor());
  ::bgs::protocol::NoData response;
  uint32 status = HandleSubmitReport(&request, &response, continuation);
  if (continuation)
    continuation(this, status, &response);
}

// @@protoc_insertion_point(namespace_scope)

}  // namespace v2
}  // namespace report
}  // namespace protocol
}  // namespace bgs

// @@protoc_insertion_point(global_scope)
