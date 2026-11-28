
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gtest, ament-lint-auto, ament-lint-common, ros2-medkit-cmake }:
buildRosPackage {
  pname = "ros-jazzy-ros2-medkit-fault-detection";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/jazzy/ros2_medkit_fault_detection/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "db5695cca9502ce8905498bf757ae6f0cbaed97bf0c06dd8efdd2824a4833d79";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-medkit-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ros2-medkit-cmake ];

  meta = {
    description = "Shared, protocol-agnostic fault-detection model (threshold, status-bit, fault-code enum) for medkit gateway plugins";
    license = with lib.licenses; [ asl20 ];
  };
}
