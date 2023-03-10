// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: club_listener.proto

#define INTERNAL_SUPPRESS_PROTOBUF_FIELD_DEPRECATION
#include "club_listener.pb.h"

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
namespace club {
namespace v1 {

namespace {

const ::google::protobuf::ServiceDescriptor* ClubListener_descriptor_ = NULL;

}  // namespace

void protobuf_AssignDesc_club_5flistener_2eproto() {
  protobuf_AddDesc_club_5flistener_2eproto();
  const ::google::protobuf::FileDescriptor* file =
    ::google::protobuf::DescriptorPool::generated_pool()->FindFileByName(
      "club_listener.proto");
  GOOGLE_CHECK(file != NULL);
  ClubListener_descriptor_ = file->service(0);
}

namespace {

GOOGLE_PROTOBUF_DECLARE_ONCE(protobuf_AssignDescriptors_once_);
inline void protobuf_AssignDescriptorsOnce() {
  ::google::protobuf::GoogleOnceInit(&protobuf_AssignDescriptors_once_,
                 &protobuf_AssignDesc_club_5flistener_2eproto);
}

void protobuf_RegisterTypes(const ::std::string&) {
  protobuf_AssignDescriptorsOnce();
}

}  // namespace

void protobuf_ShutdownFile_club_5flistener_2eproto() {
}

void protobuf_AddDesc_club_5flistener_2eproto() {
  static bool already_here = false;
  if (already_here) return;
  already_here = true;
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  ::bgs::protocol::club::v1::protobuf_AddDesc_club_5fnotification_2eproto();
  ::google::protobuf::DescriptorPool::InternalAddGeneratedFile(
    "\n\023club_listener.proto\022\024bgs.protocol.club"
    ".v1\032\027club_notification.proto2\262\022\n\014ClubLis"
    "tener\022]\n\013OnSubscribe\022+.bgs.protocol.club"
    ".v1.SubscribeNotification\032\031.bgs.protocol"
    ".NO_RESPONSE\"\006\202\371+\002\010\001\022a\n\rOnUnsubscribe\022-."
    "bgs.protocol.club.v1.UnsubscribeNotifica"
    "tion\032\031.bgs.protocol.NO_RESPONSE\"\006\202\371+\002\010\002\022"
    "c\n\016OnStateChanged\022..bgs.protocol.club.v1"
    ".StateChangedNotification\032\031.bgs.protocol"
    ".NO_RESPONSE\"\006\202\371+\002\010\003\022i\n\021OnSettingsChange"
    "d\0221.bgs.protocol.club.v1.SettingsChanged"
    "Notification\032\031.bgs.protocol.NO_RESPONSE\""
    "\006\202\371+\002\010\004\022a\n\rOnMemberAdded\022-.bgs.protocol."
    "club.v1.MemberAddedNotification\032\031.bgs.pr"
    "otocol.NO_RESPONSE\"\006\202\371+\002\010\036\022e\n\017OnMemberRe"
    "moved\022/.bgs.protocol.club.v1.MemberRemov"
    "edNotification\032\031.bgs.protocol.NO_RESPONS"
    "E\"\006\202\371+\002\010\037\022o\n\024OnMemberStateChanged\0224.bgs."
    "protocol.club.v1.MemberStateChangedNotif"
    "ication\032\031.bgs.protocol.NO_RESPONSE\"\006\202\371+\002"
    "\010 \022w\n\030OnSubscriberStateChanged\0228.bgs.pro"
    "tocol.club.v1.SubscriberStateChangedNoti"
    "fication\032\031.bgs.protocol.NO_RESPONSE\"\006\202\371+"
    "\002\010!\022m\n\023OnMemberRoleChanged\0223.bgs.protoco"
    "l.club.v1.MemberRoleChangedNotification\032"
    "\031.bgs.protocol.NO_RESPONSE\"\006\202\371+\002\010\"\022i\n\021On"
    "InvitationAdded\0221.bgs.protocol.club.v1.I"
    "nvitationAddedNotification\032\031.bgs.protoco"
    "l.NO_RESPONSE\"\006\202\371+\002\0102\022m\n\023OnInvitationRem"
    "oved\0223.bgs.protocol.club.v1.InvitationRe"
    "movedNotification\032\031.bgs.protocol.NO_RESP"
    "ONSE\"\006\202\371+\002\0103\022i\n\021OnSuggestionAdded\0221.bgs."
    "protocol.club.v1.SuggestionAddedNotifica"
    "tion\032\031.bgs.protocol.NO_RESPONSE\"\006\202\371+\002\010F\022"
    "m\n\023OnSuggestionRemoved\0223.bgs.protocol.cl"
    "ub.v1.SuggestionRemovedNotification\032\031.bg"
    "s.protocol.NO_RESPONSE\"\006\202\371+\002\010G\022a\n\rOnStre"
    "amAdded\022-.bgs.protocol.club.v1.StreamAdd"
    "edNotification\032\031.bgs.protocol.NO_RESPONS"
    "E\"\006\202\371+\002\010d\022e\n\017OnStreamRemoved\022/.bgs.proto"
    "col.club.v1.StreamRemovedNotification\032\031."
    "bgs.protocol.NO_RESPONSE\"\006\202\371+\002\010e\022o\n\024OnSt"
    "reamStateChanged\0224.bgs.protocol.club.v1."
    "StreamStateChangedNotification\032\031.bgs.pro"
    "tocol.NO_RESPONSE\"\006\202\371+\002\010f\022p\n\024OnStreamMes"
    "sageAdded\0224.bgs.protocol.club.v1.StreamM"
    "essageAddedNotification\032\031.bgs.protocol.N"
    "O_RESPONSE\"\007\202\371+\003\010\226\001\022t\n\026OnStreamMessageUp"
    "dated\0226.bgs.protocol.club.v1.StreamMessa"
    "geUpdatedNotification\032\031.bgs.protocol.NO_"
    "RESPONSE\"\007\202\371+\003\010\230\001\022v\n\027OnStreamTypingIndic"
    "ator\0227.bgs.protocol.club.v1.StreamTyping"
    "IndicatorNotification\032\031.bgs.protocol.NO_"
    "RESPONSE\"\007\202\371+\003\010\231\001\022v\n\027OnStreamUnreadIndic"
    "ator\0227.bgs.protocol.club.v1.StreamUnread"
    "IndicatorNotification\032\031.bgs.protocol.NO_"
    "RESPONSE\"\007\202\371+\003\010\232\001\022v\n\027OnStreamAdvanceView"
    "Time\0227.bgs.protocol.club.v1.StreamAdvanc"
    "eViewTimeNotification\032\031.bgs.protocol.NO_"
    "RESPONSE\"\007\202\371+\003\010\233\001\032.\202\371+$\n\"bnet.protocol.c"
    "lub.v1.ClubListener\212\371+\002\010\001B\005H\002\200\001\000", 2432);
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedFile(
    "club_listener.proto", &protobuf_RegisterTypes);
  ::google::protobuf::internal::OnShutdown(&protobuf_ShutdownFile_club_5flistener_2eproto);
}

// Force AddDescriptors() to be called at static initialization time.
struct StaticDescriptorInitializer_club_5flistener_2eproto {
  StaticDescriptorInitializer_club_5flistener_2eproto() {
    protobuf_AddDesc_club_5flistener_2eproto();
  }
} static_descriptor_initializer_club_5flistener_2eproto_;
// ===================================================================

ClubListener::ClubListener(bool use_original_hash) : ServiceBase(use_original_hash ? OriginalHash::value : NameHash::value) {
}

ClubListener::~ClubListener() {
}

google::protobuf::ServiceDescriptor const* ClubListener::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return ClubListener_descriptor_;
}

void ClubListener::OnSubscribe(::bgs::protocol::club::v1::SubscribeNotification const* request, bool client /*= false*/, bool server /*= false*/) {
  LogCallClientMethod("ClubListener.OnSubscribe", "bgs.protocol.club.v1.SubscribeNotification", request);
  SendRequest(service_hash_, 1 | (client ? 0x40000000 : 0) | (server ? 0x80000000 : 0), request);
}

void ClubListener::OnUnsubscribe(::bgs::protocol::club::v1::UnsubscribeNotification const* request, bool client /*= false*/, bool server /*= false*/) {
  LogCallClientMethod("ClubListener.OnUnsubscribe", "bgs.protocol.club.v1.UnsubscribeNotification", request);
  SendRequest(service_hash_, 2 | (client ? 0x40000000 : 0) | (server ? 0x80000000 : 0), request);
}

void ClubListener::OnStateChanged(::bgs::protocol::club::v1::StateChangedNotification const* request, bool client /*= false*/, bool server /*= false*/) {
  LogCallClientMethod("ClubListener.OnStateChanged", "bgs.protocol.club.v1.StateChangedNotification", request);
  SendRequest(service_hash_, 3 | (client ? 0x40000000 : 0) | (server ? 0x80000000 : 0), request);
}

void ClubListener::OnSettingsChanged(::bgs::protocol::club::v1::SettingsChangedNotification const* request, bool client /*= false*/, bool server /*= false*/) {
  LogCallClientMethod("ClubListener.OnSettingsChanged", "bgs.protocol.club.v1.SettingsChangedNotification", request);
  SendRequest(service_hash_, 4 | (client ? 0x40000000 : 0) | (server ? 0x80000000 : 0), request);
}

void ClubListener::OnMemberAdded(::bgs::protocol::club::v1::MemberAddedNotification const* request, bool client /*= false*/, bool server /*= false*/) {
  LogCallClientMethod("ClubListener.OnMemberAdded", "bgs.protocol.club.v1.MemberAddedNotification", request);
  SendRequest(service_hash_, 30 | (client ? 0x40000000 : 0) | (server ? 0x80000000 : 0), request);
}

void ClubListener::OnMemberRemoved(::bgs::protocol::club::v1::MemberRemovedNotification const* request, bool client /*= false*/, bool server /*= false*/) {
  LogCallClientMethod("ClubListener.OnMemberRemoved", "bgs.protocol.club.v1.MemberRemovedNotification", request);
  SendRequest(service_hash_, 31 | (client ? 0x40000000 : 0) | (server ? 0x80000000 : 0), request);
}

void ClubListener::OnMemberStateChanged(::bgs::protocol::club::v1::MemberStateChangedNotification const* request, bool client /*= false*/, bool server /*= false*/) {
  LogCallClientMethod("ClubListener.OnMemberStateChanged", "bgs.protocol.club.v1.MemberStateChangedNotification", request);
  SendRequest(service_hash_, 32 | (client ? 0x40000000 : 0) | (server ? 0x80000000 : 0), request);
}

void ClubListener::OnSubscriberStateChanged(::bgs::protocol::club::v1::SubscriberStateChangedNotification const* request, bool client /*= false*/, bool server /*= false*/) {
  LogCallClientMethod("ClubListener.OnSubscriberStateChanged", "bgs.protocol.club.v1.SubscriberStateChangedNotification", request);
  SendRequest(service_hash_, 33 | (client ? 0x40000000 : 0) | (server ? 0x80000000 : 0), request);
}

void ClubListener::OnMemberRoleChanged(::bgs::protocol::club::v1::MemberRoleChangedNotification const* request, bool client /*= false*/, bool server /*= false*/) {
  LogCallClientMethod("ClubListener.OnMemberRoleChanged", "bgs.protocol.club.v1.MemberRoleChangedNotification", request);
  SendRequest(service_hash_, 34 | (client ? 0x40000000 : 0) | (server ? 0x80000000 : 0), request);
}

void ClubListener::OnInvitationAdded(::bgs::protocol::club::v1::InvitationAddedNotification const* request, bool client /*= false*/, bool server /*= false*/) {
  LogCallClientMethod("ClubListener.OnInvitationAdded", "bgs.protocol.club.v1.InvitationAddedNotification", request);
  SendRequest(service_hash_, 50 | (client ? 0x40000000 : 0) | (server ? 0x80000000 : 0), request);
}

void ClubListener::OnInvitationRemoved(::bgs::protocol::club::v1::InvitationRemovedNotification const* request, bool client /*= false*/, bool server /*= false*/) {
  LogCallClientMethod("ClubListener.OnInvitationRemoved", "bgs.protocol.club.v1.InvitationRemovedNotification", request);
  SendRequest(service_hash_, 51 | (client ? 0x40000000 : 0) | (server ? 0x80000000 : 0), request);
}

void ClubListener::OnSuggestionAdded(::bgs::protocol::club::v1::SuggestionAddedNotification const* request, bool client /*= false*/, bool server /*= false*/) {
  LogCallClientMethod("ClubListener.OnSuggestionAdded", "bgs.protocol.club.v1.SuggestionAddedNotification", request);
  SendRequest(service_hash_, 70 | (client ? 0x40000000 : 0) | (server ? 0x80000000 : 0), request);
}

void ClubListener::OnSuggestionRemoved(::bgs::protocol::club::v1::SuggestionRemovedNotification const* request, bool client /*= false*/, bool server /*= false*/) {
  LogCallClientMethod("ClubListener.OnSuggestionRemoved", "bgs.protocol.club.v1.SuggestionRemovedNotification", request);
  SendRequest(service_hash_, 71 | (client ? 0x40000000 : 0) | (server ? 0x80000000 : 0), request);
}

void ClubListener::OnStreamAdded(::bgs::protocol::club::v1::StreamAddedNotification const* request, bool client /*= false*/, bool server /*= false*/) {
  LogCallClientMethod("ClubListener.OnStreamAdded", "bgs.protocol.club.v1.StreamAddedNotification", request);
  SendRequest(service_hash_, 100 | (client ? 0x40000000 : 0) | (server ? 0x80000000 : 0), request);
}

void ClubListener::OnStreamRemoved(::bgs::protocol::club::v1::StreamRemovedNotification const* request, bool client /*= false*/, bool server /*= false*/) {
  LogCallClientMethod("ClubListener.OnStreamRemoved", "bgs.protocol.club.v1.StreamRemovedNotification", request);
  SendRequest(service_hash_, 101 | (client ? 0x40000000 : 0) | (server ? 0x80000000 : 0), request);
}

void ClubListener::OnStreamStateChanged(::bgs::protocol::club::v1::StreamStateChangedNotification const* request, bool client /*= false*/, bool server /*= false*/) {
  LogCallClientMethod("ClubListener.OnStreamStateChanged", "bgs.protocol.club.v1.StreamStateChangedNotification", request);
  SendRequest(service_hash_, 102 | (client ? 0x40000000 : 0) | (server ? 0x80000000 : 0), request);
}

void ClubListener::OnStreamMessageAdded(::bgs::protocol::club::v1::StreamMessageAddedNotification const* request, bool client /*= false*/, bool server /*= false*/) {
  LogCallClientMethod("ClubListener.OnStreamMessageAdded", "bgs.protocol.club.v1.StreamMessageAddedNotification", request);
  SendRequest(service_hash_, 150 | (client ? 0x40000000 : 0) | (server ? 0x80000000 : 0), request);
}

void ClubListener::OnStreamMessageUpdated(::bgs::protocol::club::v1::StreamMessageUpdatedNotification const* request, bool client /*= false*/, bool server /*= false*/) {
  LogCallClientMethod("ClubListener.OnStreamMessageUpdated", "bgs.protocol.club.v1.StreamMessageUpdatedNotification", request);
  SendRequest(service_hash_, 152 | (client ? 0x40000000 : 0) | (server ? 0x80000000 : 0), request);
}

void ClubListener::OnStreamTypingIndicator(::bgs::protocol::club::v1::StreamTypingIndicatorNotification const* request, bool client /*= false*/, bool server /*= false*/) {
  LogCallClientMethod("ClubListener.OnStreamTypingIndicator", "bgs.protocol.club.v1.StreamTypingIndicatorNotification", request);
  SendRequest(service_hash_, 153 | (client ? 0x40000000 : 0) | (server ? 0x80000000 : 0), request);
}

void ClubListener::OnStreamUnreadIndicator(::bgs::protocol::club::v1::StreamUnreadIndicatorNotification const* request, bool client /*= false*/, bool server /*= false*/) {
  LogCallClientMethod("ClubListener.OnStreamUnreadIndicator", "bgs.protocol.club.v1.StreamUnreadIndicatorNotification", request);
  SendRequest(service_hash_, 154 | (client ? 0x40000000 : 0) | (server ? 0x80000000 : 0), request);
}

void ClubListener::OnStreamAdvanceViewTime(::bgs::protocol::club::v1::StreamAdvanceViewTimeNotification const* request, bool client /*= false*/, bool server /*= false*/) {
  LogCallClientMethod("ClubListener.OnStreamAdvanceViewTime", "bgs.protocol.club.v1.StreamAdvanceViewTimeNotification", request);
  SendRequest(service_hash_, 155 | (client ? 0x40000000 : 0) | (server ? 0x80000000 : 0), request);
}

void ClubListener::CallServerMethod(uint32 /*token*/, uint32 methodId, MessageBuffer /*buffer*/) {
  LogDisallowedMethod(methodId);
}

// @@protoc_insertion_point(namespace_scope)

}  // namespace v1
}  // namespace club
}  // namespace protocol
}  // namespace bgs

// @@protoc_insertion_point(global_scope)
