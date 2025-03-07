// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: BayesianProbitRegressor.proto
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

public struct CoreML_Specification_BayesianProbitRegressor {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var numberOfFeatures: UInt32 = 0

  /// bias term
  var bias: CoreML_Specification_BayesianProbitRegressor.Gaussian {
    get {return _bias ?? CoreML_Specification_BayesianProbitRegressor.Gaussian()}
    set {_bias = newValue}
  }
  /// Returns true if `bias` has been explicitly set.
  var hasBias: Bool {return self._bias != nil}
  /// Clears the value of `bias`. Subsequent reads from it will return its default value.
  public mutating func clearBias() {self._bias = nil}

  ///
  /// Set of features with associated weights
  var features: [CoreML_Specification_BayesianProbitRegressor.FeatureWeight] = []

  ///
  /// Set this name to be the same as input feature of type multi-array (1D)
  /// in the model description you want to use as the regression input
  var regressionInputFeatureName: String = String()

  ///
  /// Set this name to be the same as optional input feature of type double
  /// in the model description you want to use as the optimism input
  var optimismInputFeatureName: String = String()

  ///
  /// Set this name to be the same as optional input feature of type double
  /// in the model description you want to use as the samplingScale input
  var samplingScaleInputFeatureName: String = String()

  ///
  /// Set this name to be the same as optional input feature of type double
  /// in the model description you want to use as the samplingBounds input
  var samplingTruncationInputFeatureName: String = String()

  ///
  /// name of 'mean' output feature
  var meanOutputFeatureName: String = String()

  ///
  /// name of 'variance' output feature
  var varianceOutputFeatureName: String = String()

  ///
  /// name of 'pessimistic' output feature
  var pessimisticProbabilityOutputFeatureName: String = String()

  ///
  /// name of 'sampled' output feature: samples from the scaled posterior probability distribuiton
  var sampledProbabilityOutputFeatureName: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  ///
  /// Parameterization of a Gaussian distribution
  public struct Gaussian {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var mean: Double = 0

    /// inverse of the variance
    var precision: Double = 0

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  ///
  /// Weight for a specific feature value
  /// The weight is represented as a Gaussian distribution
  /// with a mean and precision (1/variance) to capture
  /// uncertainty in the weight
  public struct FeatureValueWeight {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var featureValue: UInt32 = 0

    var featureWeight: CoreML_Specification_BayesianProbitRegressor.Gaussian {
      get {return _featureWeight ?? CoreML_Specification_BayesianProbitRegressor.Gaussian()}
      set {_featureWeight = newValue}
    }
    /// Returns true if `featureWeight` has been explicitly set.
    var hasFeatureWeight: Bool {return self._featureWeight != nil}
    /// Clears the value of `featureWeight`. Subsequent reads from it will return its default value.
    public mutating func clearFeatureWeight() {self._featureWeight = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _featureWeight: CoreML_Specification_BayesianProbitRegressor.Gaussian? = nil
  }

  ///
  /// Feature with associated weights (for different values)
  /// Each feature has a set of weights for the (discrete) values
  /// it can take
  public struct FeatureWeight {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var featureID: UInt32 = 0

    var weights: [CoreML_Specification_BayesianProbitRegressor.FeatureValueWeight] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _bias: CoreML_Specification_BayesianProbitRegressor.Gaussian? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "CoreML.Specification"

extension CoreML_Specification_BayesianProbitRegressor: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BayesianProbitRegressor"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "numberOfFeatures"),
    2: .same(proto: "bias"),
    3: .same(proto: "features"),
    10: .same(proto: "regressionInputFeatureName"),
    11: .same(proto: "optimismInputFeatureName"),
    12: .same(proto: "samplingScaleInputFeatureName"),
    13: .same(proto: "samplingTruncationInputFeatureName"),
    20: .same(proto: "meanOutputFeatureName"),
    21: .same(proto: "varianceOutputFeatureName"),
    22: .same(proto: "pessimisticProbabilityOutputFeatureName"),
    23: .same(proto: "sampledProbabilityOutputFeatureName"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.numberOfFeatures) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._bias) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.features) }()
      case 10: try { try decoder.decodeSingularStringField(value: &self.regressionInputFeatureName) }()
      case 11: try { try decoder.decodeSingularStringField(value: &self.optimismInputFeatureName) }()
      case 12: try { try decoder.decodeSingularStringField(value: &self.samplingScaleInputFeatureName) }()
      case 13: try { try decoder.decodeSingularStringField(value: &self.samplingTruncationInputFeatureName) }()
      case 20: try { try decoder.decodeSingularStringField(value: &self.meanOutputFeatureName) }()
      case 21: try { try decoder.decodeSingularStringField(value: &self.varianceOutputFeatureName) }()
      case 22: try { try decoder.decodeSingularStringField(value: &self.pessimisticProbabilityOutputFeatureName) }()
      case 23: try { try decoder.decodeSingularStringField(value: &self.sampledProbabilityOutputFeatureName) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.numberOfFeatures != 0 {
      try visitor.visitSingularUInt32Field(value: self.numberOfFeatures, fieldNumber: 1)
    }
    try { if let v = self._bias {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    if !self.features.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.features, fieldNumber: 3)
    }
    if !self.regressionInputFeatureName.isEmpty {
      try visitor.visitSingularStringField(value: self.regressionInputFeatureName, fieldNumber: 10)
    }
    if !self.optimismInputFeatureName.isEmpty {
      try visitor.visitSingularStringField(value: self.optimismInputFeatureName, fieldNumber: 11)
    }
    if !self.samplingScaleInputFeatureName.isEmpty {
      try visitor.visitSingularStringField(value: self.samplingScaleInputFeatureName, fieldNumber: 12)
    }
    if !self.samplingTruncationInputFeatureName.isEmpty {
      try visitor.visitSingularStringField(value: self.samplingTruncationInputFeatureName, fieldNumber: 13)
    }
    if !self.meanOutputFeatureName.isEmpty {
      try visitor.visitSingularStringField(value: self.meanOutputFeatureName, fieldNumber: 20)
    }
    if !self.varianceOutputFeatureName.isEmpty {
      try visitor.visitSingularStringField(value: self.varianceOutputFeatureName, fieldNumber: 21)
    }
    if !self.pessimisticProbabilityOutputFeatureName.isEmpty {
      try visitor.visitSingularStringField(value: self.pessimisticProbabilityOutputFeatureName, fieldNumber: 22)
    }
    if !self.sampledProbabilityOutputFeatureName.isEmpty {
      try visitor.visitSingularStringField(value: self.sampledProbabilityOutputFeatureName, fieldNumber: 23)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: CoreML_Specification_BayesianProbitRegressor, rhs: CoreML_Specification_BayesianProbitRegressor) -> Bool {
    if lhs.numberOfFeatures != rhs.numberOfFeatures {return false}
    if lhs._bias != rhs._bias {return false}
    if lhs.features != rhs.features {return false}
    if lhs.regressionInputFeatureName != rhs.regressionInputFeatureName {return false}
    if lhs.optimismInputFeatureName != rhs.optimismInputFeatureName {return false}
    if lhs.samplingScaleInputFeatureName != rhs.samplingScaleInputFeatureName {return false}
    if lhs.samplingTruncationInputFeatureName != rhs.samplingTruncationInputFeatureName {return false}
    if lhs.meanOutputFeatureName != rhs.meanOutputFeatureName {return false}
    if lhs.varianceOutputFeatureName != rhs.varianceOutputFeatureName {return false}
    if lhs.pessimisticProbabilityOutputFeatureName != rhs.pessimisticProbabilityOutputFeatureName {return false}
    if lhs.sampledProbabilityOutputFeatureName != rhs.sampledProbabilityOutputFeatureName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CoreML_Specification_BayesianProbitRegressor.Gaussian: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = CoreML_Specification_BayesianProbitRegressor.protoMessageName + ".Gaussian"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "mean"),
    2: .same(proto: "precision"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularDoubleField(value: &self.mean) }()
      case 2: try { try decoder.decodeSingularDoubleField(value: &self.precision) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.mean != 0 {
      try visitor.visitSingularDoubleField(value: self.mean, fieldNumber: 1)
    }
    if self.precision != 0 {
      try visitor.visitSingularDoubleField(value: self.precision, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: CoreML_Specification_BayesianProbitRegressor.Gaussian, rhs: CoreML_Specification_BayesianProbitRegressor.Gaussian) -> Bool {
    if lhs.mean != rhs.mean {return false}
    if lhs.precision != rhs.precision {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CoreML_Specification_BayesianProbitRegressor.FeatureValueWeight: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = CoreML_Specification_BayesianProbitRegressor.protoMessageName + ".FeatureValueWeight"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "featureValue"),
    2: .same(proto: "featureWeight"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.featureValue) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._featureWeight) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.featureValue != 0 {
      try visitor.visitSingularUInt32Field(value: self.featureValue, fieldNumber: 1)
    }
    try { if let v = self._featureWeight {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: CoreML_Specification_BayesianProbitRegressor.FeatureValueWeight, rhs: CoreML_Specification_BayesianProbitRegressor.FeatureValueWeight) -> Bool {
    if lhs.featureValue != rhs.featureValue {return false}
    if lhs._featureWeight != rhs._featureWeight {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CoreML_Specification_BayesianProbitRegressor.FeatureWeight: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = CoreML_Specification_BayesianProbitRegressor.protoMessageName + ".FeatureWeight"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "featureId"),
    2: .same(proto: "weights"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.featureID) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.weights) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.featureID != 0 {
      try visitor.visitSingularUInt32Field(value: self.featureID, fieldNumber: 1)
    }
    if !self.weights.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.weights, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: CoreML_Specification_BayesianProbitRegressor.FeatureWeight, rhs: CoreML_Specification_BayesianProbitRegressor.FeatureWeight) -> Bool {
    if lhs.featureID != rhs.featureID {return false}
    if lhs.weights != rhs.weights {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
