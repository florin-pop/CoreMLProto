// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: GLMClassifier.proto
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
/// A generalized linear model classifier.
public struct CoreML_Specification_GLMClassifier {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var weights: [CoreML_Specification_GLMClassifier.DoubleArray] = []

  var offset: [Double] = []

  var postEvaluationTransform: CoreML_Specification_GLMClassifier.PostEvaluationTransform = .logit

  var classEncoding: CoreML_Specification_GLMClassifier.ClassEncoding = .referenceClass

  ///*
  /// Required class label mapping.
  var classLabels: CoreML_Specification_GLMClassifier.OneOf_ClassLabels? = nil

  var stringClassLabels: CoreML_Specification_StringVector {
    get {
      if case .stringClassLabels(let v)? = classLabels {return v}
      return CoreML_Specification_StringVector()
    }
    set {classLabels = .stringClassLabels(newValue)}
  }

  var int64ClassLabels: CoreML_Specification_Int64Vector {
    get {
      if case .int64ClassLabels(let v)? = classLabels {return v}
      return CoreML_Specification_Int64Vector()
    }
    set {classLabels = .int64ClassLabels(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  ///*
  /// Required class label mapping.
  public enum OneOf_ClassLabels: Equatable {
    case stringClassLabels(CoreML_Specification_StringVector)
    case int64ClassLabels(CoreML_Specification_Int64Vector)

  #if !swift(>=4.1)
    public static func ==(lhs: CoreML_Specification_GLMClassifier.OneOf_ClassLabels, rhs: CoreML_Specification_GLMClassifier.OneOf_ClassLabels) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.stringClassLabels, .stringClassLabels): return {
        guard case .stringClassLabels(let l) = lhs, case .stringClassLabels(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.int64ClassLabels, .int64ClassLabels): return {
        guard case .int64ClassLabels(let l) = lhs, case .int64ClassLabels(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public enum PostEvaluationTransform: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case logit // = 0

    //// Only binary classification is supported for probit
    case probit // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .logit
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .logit
      case 1: self = .probit
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .logit: return 0
      case .probit: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public enum ClassEncoding: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    //// First class is the reference class
    case referenceClass // = 0

    //// Also called One vs All
    case oneVsRest // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .referenceClass
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .referenceClass
      case 1: self = .oneVsRest
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .referenceClass: return 0
      case .oneVsRest: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public struct DoubleArray {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var value: [Double] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}
}

#if swift(>=4.2)

extension CoreML_Specification_GLMClassifier.PostEvaluationTransform: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [CoreML_Specification_GLMClassifier.PostEvaluationTransform] = [
    .logit,
    .probit,
  ]
}

extension CoreML_Specification_GLMClassifier.ClassEncoding: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [CoreML_Specification_GLMClassifier.ClassEncoding] = [
    .referenceClass,
    .oneVsRest,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "CoreML.Specification"

extension CoreML_Specification_GLMClassifier: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GLMClassifier"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "weights"),
    2: .same(proto: "offset"),
    3: .same(proto: "postEvaluationTransform"),
    4: .same(proto: "classEncoding"),
    100: .same(proto: "stringClassLabels"),
    101: .same(proto: "int64ClassLabels"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.weights) }()
      case 2: try { try decoder.decodeRepeatedDoubleField(value: &self.offset) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.postEvaluationTransform) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self.classEncoding) }()
      case 100: try {
        var v: CoreML_Specification_StringVector?
        var hadOneofValue = false
        if let current = self.classLabels {
          hadOneofValue = true
          if case .stringClassLabels(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.classLabels = .stringClassLabels(v)
        }
      }()
      case 101: try {
        var v: CoreML_Specification_Int64Vector?
        var hadOneofValue = false
        if let current = self.classLabels {
          hadOneofValue = true
          if case .int64ClassLabels(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.classLabels = .int64ClassLabels(v)
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
    if !self.weights.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.weights, fieldNumber: 1)
    }
    if !self.offset.isEmpty {
      try visitor.visitPackedDoubleField(value: self.offset, fieldNumber: 2)
    }
    if self.postEvaluationTransform != .logit {
      try visitor.visitSingularEnumField(value: self.postEvaluationTransform, fieldNumber: 3)
    }
    if self.classEncoding != .referenceClass {
      try visitor.visitSingularEnumField(value: self.classEncoding, fieldNumber: 4)
    }
    switch self.classLabels {
    case .stringClassLabels?: try {
      guard case .stringClassLabels(let v)? = self.classLabels else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 100)
    }()
    case .int64ClassLabels?: try {
      guard case .int64ClassLabels(let v)? = self.classLabels else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 101)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: CoreML_Specification_GLMClassifier, rhs: CoreML_Specification_GLMClassifier) -> Bool {
    if lhs.weights != rhs.weights {return false}
    if lhs.offset != rhs.offset {return false}
    if lhs.postEvaluationTransform != rhs.postEvaluationTransform {return false}
    if lhs.classEncoding != rhs.classEncoding {return false}
    if lhs.classLabels != rhs.classLabels {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CoreML_Specification_GLMClassifier.PostEvaluationTransform: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "Logit"),
    1: .same(proto: "Probit"),
  ]
}

extension CoreML_Specification_GLMClassifier.ClassEncoding: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ReferenceClass"),
    1: .same(proto: "OneVsRest"),
  ]
}

extension CoreML_Specification_GLMClassifier.DoubleArray: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = CoreML_Specification_GLMClassifier.protoMessageName + ".DoubleArray"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "value"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedDoubleField(value: &self.value) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.value.isEmpty {
      try visitor.visitPackedDoubleField(value: self.value, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: CoreML_Specification_GLMClassifier.DoubleArray, rhs: CoreML_Specification_GLMClassifier.DoubleArray) -> Bool {
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
