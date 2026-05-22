
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-tensor-msgs";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_buffer_backends-release/archive/release/lyrical/tensor_msgs/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "d94e08eb97808693d0d9bb5c684f947cedde3615e22a88f02d73e4446e97b436";
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
