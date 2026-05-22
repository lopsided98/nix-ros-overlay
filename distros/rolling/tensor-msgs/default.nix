
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-tensor-msgs";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_buffer_backends-release/archive/release/rolling/tensor_msgs/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "b36a6019de9e0f40bfa311f3549cdb3f857e077e1cbf72d8ab46c6adc132d570";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "DLPack-compatible Tensor message for publishing / subscribing to tensors.
  Currently exposes only ExperimentalTensor (used internally; schema may change
  before stabilization).";
    license = with lib.licenses; [ asl20 ];
  };
}
