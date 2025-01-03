
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, eigen, geometry-msgs, ouxt-lint-common, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-quaternion-operation";
  version = "0.0.7-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/quaternion_operation-release/archive/release/rolling/quaternion_operation/0.0.7-4.tar.gz";
    name = "0.0.7-4.tar.gz";
    sha256 = "70fa5b5cd2d0fc1828d97d6cd5cccfbeb03dd52bb3aedbb672ba880de24d9309";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ouxt-lint-common ];
  propagatedBuildInputs = [ ament-cmake-auto eigen geometry-msgs rclcpp tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The quaternion_operation package";
    license = with lib.licenses; [ asl20 ];
  };
}
