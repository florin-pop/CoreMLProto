// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Parameters.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright (c) 2017, Apple Inc. All rights reserved.
//
// Use of this source code is governed by a BSD-3-clause license that can be
// found in LICENSE.txt or at https://opensource.org/licenses/BSD-3-Clause

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  public struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  public typealias Version = _2
}

///*
/// Int64 parameter,
/// consisting of a default int64 value, and allowed range or set of values
/// value is unbounded if AllowedValues is not set.
public struct CoreML_Specification_Int64Parameter {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var defaultValue: Int64 = 0

  var allowedValues: CoreML_Specification_Int64Parameter.OneOf_AllowedValues? = nil

  var range: CoreML_Specification_Int64Range {
    get {
      if case .range(let v)? = allowedValues {return v}
      return CoreML_Specification_Int64Range()
    }
    set {allowedValues = .range(newValue)}
  }

  var set: CoreML_Specification_Int64Set {
    get {
      if case .set(let v)? = allowedValues {return v}
      return CoreML_Specification_Int64Set()
    }
    set {allowedValues = .set(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_AllowedValues: Equatable {
    case range(CoreML_Specification_Int64Range)
    case set(CoreML_Specification_Int64Set)

  #if !swift(>=4.1)
    public static func ==(lhs: CoreML_Specification_Int64Parameter.OneOf_AllowedValues, rhs: CoreML_Specification_Int64Parameter.OneOf_AllowedValues) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.range, .range): return {
        guard case .range(let l) = lhs, case .range(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.set, .set): return {
        guard case .set(let l) = lhs, case .set(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

///*
/// Double parameter,
/// consisting of a default double value, and allowed range of values
/// value is unbounded if AllowedValues is not set.
public struct CoreML_Specification_DoubleParameter {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var defaultValue: Double = 0

  var allowedValues: CoreML_Specification_DoubleParameter.OneOf_AllowedValues? = nil

  var range: CoreML_Specification_DoubleRange {
    get {
      if case .range(let v)? = allowedValues {return v}
      return CoreML_Specification_DoubleRange()
    }
    set {allowedValues = .range(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_AllowedValues: Equatable {
    case range(CoreML_Specification_DoubleRange)

  #if !swift(>=4.1)
    public static func ==(lhs: CoreML_Specification_DoubleParameter.OneOf_AllowedValues, rhs: CoreML_Specification_DoubleParameter.OneOf_AllowedValues) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.range, .range): return {
        guard case .range(let l) = lhs, case .range(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      }
    }
  #endif
  }

  public init() {}
}

///*
/// String parameter,
/// A default string value must be provided
public struct CoreML_Specification_StringParameter {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var defaultValue: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

///*
/// String parameter,
/// A default bool value must be provided
public struct CoreML_Specification_BoolParameter {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var defaultValue: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "CoreML.Specification"

extension CoreML_Specification_Int64Parameter: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Int64Parameter"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "defaultValue"),
    10: .same(proto: "range"),
    11: .same(proto: "set"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.defaultValue) }()
      case 10: try {
        var v: CoreML_Specification_Int64Range?
        var hadOneofValue = false
        if let current = self.allowedValues {
          hadOneofValue = true
          if case .range(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.allowedValues = .range(v)
        }
      }()
      case 11: try {
        var v: CoreML_Specification_Int64Set?
        var hadOneofValue = false
        if let current = self.allowedValues {
          hadOneofValue = true
          if case .set(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.allowedValues = .set(v)
        }
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.defaultValue != 0 {
      try visitor.visitSingularInt64Field(value: self.defaultValue, fieldNumber: 1)
    }
    switch self.allowedValues {
    case .range?: try {
      guard case .range(let v)? = self.allowedValues else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
    }()
    case .set?: try {
      guard case .set(let v)? = self.allowedValues else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: CoreML_Specification_Int64Parameter, rhs: CoreML_Specification_Int64Parameter) -> Bool {
    if lhs.defaultValue != rhs.defaultValue {return false}
    if lhs.allowedValues != rhs.allowedValues {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CoreML_Specification_DoubleParameter: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DoubleParameter"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "defaultValue"),
    10: .same(proto: "range"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularDoubleField(value: &self.defaultValue) }()
      case 10: try {
        var v: CoreML_Specification_DoubleRange?
        var hadOneofValue = false
        if let current = self.allowedValues {
          hadOneofValue = true
          if case .range(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.allowedValues = .range(v)
        }
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.defaultValue != 0 {
      try visitor.visitSingularDoubleField(value: self.defaultValue, fieldNumber: 1)
    }
    try { if case .range(let v)? = self.allowedValues {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: CoreML_Specification_DoubleParameter, rhs: CoreML_Specification_DoubleParameter) -> Bool {
    if lhs.defaultValue != rhs.defaultValue {return false}
    if lhs.allowedValues != rhs.allowedValues {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CoreML_Specification_StringParameter: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StringParameter"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "defaultValue"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.defaultValue) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.defaultValue.isEmpty {
      try visitor.visitSingularStringField(value: self.defaultValue, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: CoreML_Specification_StringParameter, rhs: CoreML_Specification_StringParameter) -> Bool {
    if lhs.defaultValue != rhs.defaultValue {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CoreML_Specification_BoolParameter: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BoolParameter"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "defaultValue"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBoolField(value: &self.defaultValue) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.defaultValue != false {
      try visitor.visitSingularBoolField(value: self.defaultValue, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: CoreML_Specification_BoolParameter, rhs: CoreML_Specification_BoolParameter) -> Bool {
    if lhs.defaultValue != rhs.defaultValue {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
