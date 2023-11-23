// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Imputer.proto
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
/// A transformer that replaces missing values with a default value,
/// such as a statistically-derived value.
///
/// If ``ReplaceValue`` is set, then missing values of that type are
/// replaced with the corresponding value.
///
/// For example: if ``replaceDoubleValue`` is set to ``NaN``
/// and a single ``NaN`` double value is provided as input,
/// then it is replaced by ``imputedDoubleValue``. However
/// if the input is an array of doubles, then any instances
/// of ``NaN`` in the array is replaced with the corresponding
/// value in ``imputedDoubleArray``.
public struct CoreML_Specification_Imputer {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var imputedValue: CoreML_Specification_Imputer.OneOf_ImputedValue? = nil

  var imputedDoubleValue: Double {
    get {
      if case .imputedDoubleValue(let v)? = imputedValue {return v}
      return 0
    }
    set {imputedValue = .imputedDoubleValue(newValue)}
  }

  var imputedInt64Value: Int64 {
    get {
      if case .imputedInt64Value(let v)? = imputedValue {return v}
      return 0
    }
    set {imputedValue = .imputedInt64Value(newValue)}
  }

  var imputedStringValue: String {
    get {
      if case .imputedStringValue(let v)? = imputedValue {return v}
      return String()
    }
    set {imputedValue = .imputedStringValue(newValue)}
  }

  var imputedDoubleArray: CoreML_Specification_DoubleVector {
    get {
      if case .imputedDoubleArray(let v)? = imputedValue {return v}
      return CoreML_Specification_DoubleVector()
    }
    set {imputedValue = .imputedDoubleArray(newValue)}
  }

  var imputedInt64Array: CoreML_Specification_Int64Vector {
    get {
      if case .imputedInt64Array(let v)? = imputedValue {return v}
      return CoreML_Specification_Int64Vector()
    }
    set {imputedValue = .imputedInt64Array(newValue)}
  }

  var imputedStringDictionary: CoreML_Specification_StringToDoubleMap {
    get {
      if case .imputedStringDictionary(let v)? = imputedValue {return v}
      return CoreML_Specification_StringToDoubleMap()
    }
    set {imputedValue = .imputedStringDictionary(newValue)}
  }

  var imputedInt64Dictionary: CoreML_Specification_Int64ToDoubleMap {
    get {
      if case .imputedInt64Dictionary(let v)? = imputedValue {return v}
      return CoreML_Specification_Int64ToDoubleMap()
    }
    set {imputedValue = .imputedInt64Dictionary(newValue)}
  }

  var replaceValue: CoreML_Specification_Imputer.OneOf_ReplaceValue? = nil

  var replaceDoubleValue: Double {
    get {
      if case .replaceDoubleValue(let v)? = replaceValue {return v}
      return 0
    }
    set {replaceValue = .replaceDoubleValue(newValue)}
  }

  var replaceInt64Value: Int64 {
    get {
      if case .replaceInt64Value(let v)? = replaceValue {return v}
      return 0
    }
    set {replaceValue = .replaceInt64Value(newValue)}
  }

  var replaceStringValue: String {
    get {
      if case .replaceStringValue(let v)? = replaceValue {return v}
      return String()
    }
    set {replaceValue = .replaceStringValue(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_ImputedValue: Equatable {
    case imputedDoubleValue(Double)
    case imputedInt64Value(Int64)
    case imputedStringValue(String)
    case imputedDoubleArray(CoreML_Specification_DoubleVector)
    case imputedInt64Array(CoreML_Specification_Int64Vector)
    case imputedStringDictionary(CoreML_Specification_StringToDoubleMap)
    case imputedInt64Dictionary(CoreML_Specification_Int64ToDoubleMap)

  #if !swift(>=4.1)
    public static func ==(lhs: CoreML_Specification_Imputer.OneOf_ImputedValue, rhs: CoreML_Specification_Imputer.OneOf_ImputedValue) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.imputedDoubleValue, .imputedDoubleValue): return {
        guard case .imputedDoubleValue(let l) = lhs, case .imputedDoubleValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.imputedInt64Value, .imputedInt64Value): return {
        guard case .imputedInt64Value(let l) = lhs, case .imputedInt64Value(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.imputedStringValue, .imputedStringValue): return {
        guard case .imputedStringValue(let l) = lhs, case .imputedStringValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.imputedDoubleArray, .imputedDoubleArray): return {
        guard case .imputedDoubleArray(let l) = lhs, case .imputedDoubleArray(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.imputedInt64Array, .imputedInt64Array): return {
        guard case .imputedInt64Array(let l) = lhs, case .imputedInt64Array(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.imputedStringDictionary, .imputedStringDictionary): return {
        guard case .imputedStringDictionary(let l) = lhs, case .imputedStringDictionary(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.imputedInt64Dictionary, .imputedInt64Dictionary): return {
        guard case .imputedInt64Dictionary(let l) = lhs, case .imputedInt64Dictionary(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public enum OneOf_ReplaceValue: Equatable {
    case replaceDoubleValue(Double)
    case replaceInt64Value(Int64)
    case replaceStringValue(String)

  #if !swift(>=4.1)
    public static func ==(lhs: CoreML_Specification_Imputer.OneOf_ReplaceValue, rhs: CoreML_Specification_Imputer.OneOf_ReplaceValue) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.replaceDoubleValue, .replaceDoubleValue): return {
        guard case .replaceDoubleValue(let l) = lhs, case .replaceDoubleValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.replaceInt64Value, .replaceInt64Value): return {
        guard case .replaceInt64Value(let l) = lhs, case .replaceInt64Value(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.replaceStringValue, .replaceStringValue): return {
        guard case .replaceStringValue(let l) = lhs, case .replaceStringValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "CoreML.Specification"

extension CoreML_Specification_Imputer: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Imputer"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "imputedDoubleValue"),
    2: .same(proto: "imputedInt64Value"),
    3: .same(proto: "imputedStringValue"),
    4: .same(proto: "imputedDoubleArray"),
    5: .same(proto: "imputedInt64Array"),
    6: .same(proto: "imputedStringDictionary"),
    7: .same(proto: "imputedInt64Dictionary"),
    11: .same(proto: "replaceDoubleValue"),
    12: .same(proto: "replaceInt64Value"),
    13: .same(proto: "replaceStringValue"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Double?
        try decoder.decodeSingularDoubleField(value: &v)
        if let v = v {
          if self.imputedValue != nil {try decoder.handleConflictingOneOf()}
          self.imputedValue = .imputedDoubleValue(v)
        }
      }()
      case 2: try {
        var v: Int64?
        try decoder.decodeSingularInt64Field(value: &v)
        if let v = v {
          if self.imputedValue != nil {try decoder.handleConflictingOneOf()}
          self.imputedValue = .imputedInt64Value(v)
        }
      }()
      case 3: try {
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {
          if self.imputedValue != nil {try decoder.handleConflictingOneOf()}
          self.imputedValue = .imputedStringValue(v)
        }
      }()
      case 4: try {
        var v: CoreML_Specification_DoubleVector?
        var hadOneofValue = false
        if let current = self.imputedValue {
          hadOneofValue = true
          if case .imputedDoubleArray(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.imputedValue = .imputedDoubleArray(v)
        }
      }()
      case 5: try {
        var v: CoreML_Specification_Int64Vector?
        var hadOneofValue = false
        if let current = self.imputedValue {
          hadOneofValue = true
          if case .imputedInt64Array(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.imputedValue = .imputedInt64Array(v)
        }
      }()
      case 6: try {
        var v: CoreML_Specification_StringToDoubleMap?
        var hadOneofValue = false
        if let current = self.imputedValue {
          hadOneofValue = true
          if case .imputedStringDictionary(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.imputedValue = .imputedStringDictionary(v)
        }
      }()
      case 7: try {
        var v: CoreML_Specification_Int64ToDoubleMap?
        var hadOneofValue = false
        if let current = self.imputedValue {
          hadOneofValue = true
          if case .imputedInt64Dictionary(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.imputedValue = .imputedInt64Dictionary(v)
        }
      }()
      case 11: try {
        var v: Double?
        try decoder.decodeSingularDoubleField(value: &v)
        if let v = v {
          if self.replaceValue != nil {try decoder.handleConflictingOneOf()}
          self.replaceValue = .replaceDoubleValue(v)
        }
      }()
      case 12: try {
        var v: Int64?
        try decoder.decodeSingularInt64Field(value: &v)
        if let v = v {
          if self.replaceValue != nil {try decoder.handleConflictingOneOf()}
          self.replaceValue = .replaceInt64Value(v)
        }
      }()
      case 13: try {
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {
          if self.replaceValue != nil {try decoder.handleConflictingOneOf()}
          self.replaceValue = .replaceStringValue(v)
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
    switch self.imputedValue {
    case .imputedDoubleValue?: try {
      guard case .imputedDoubleValue(let v)? = self.imputedValue else { preconditionFailure() }
      try visitor.visitSingularDoubleField(value: v, fieldNumber: 1)
    }()
    case .imputedInt64Value?: try {
      guard case .imputedInt64Value(let v)? = self.imputedValue else { preconditionFailure() }
      try visitor.visitSingularInt64Field(value: v, fieldNumber: 2)
    }()
    case .imputedStringValue?: try {
      guard case .imputedStringValue(let v)? = self.imputedValue else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 3)
    }()
    case .imputedDoubleArray?: try {
      guard case .imputedDoubleArray(let v)? = self.imputedValue else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }()
    case .imputedInt64Array?: try {
      guard case .imputedInt64Array(let v)? = self.imputedValue else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }()
    case .imputedStringDictionary?: try {
      guard case .imputedStringDictionary(let v)? = self.imputedValue else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }()
    case .imputedInt64Dictionary?: try {
      guard case .imputedInt64Dictionary(let v)? = self.imputedValue else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    }()
    case nil: break
    }
    switch self.replaceValue {
    case .replaceDoubleValue?: try {
      guard case .replaceDoubleValue(let v)? = self.replaceValue else { preconditionFailure() }
      try visitor.visitSingularDoubleField(value: v, fieldNumber: 11)
    }()
    case .replaceInt64Value?: try {
      guard case .replaceInt64Value(let v)? = self.replaceValue else { preconditionFailure() }
      try visitor.visitSingularInt64Field(value: v, fieldNumber: 12)
    }()
    case .replaceStringValue?: try {
      guard case .replaceStringValue(let v)? = self.replaceValue else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 13)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: CoreML_Specification_Imputer, rhs: CoreML_Specification_Imputer) -> Bool {
    if lhs.imputedValue != rhs.imputedValue {return false}
    if lhs.replaceValue != rhs.replaceValue {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
