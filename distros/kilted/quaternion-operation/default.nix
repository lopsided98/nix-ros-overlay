
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, eigen, geometry-msgs, ouxt-lint-common, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-quaternion-operation";
  version = "0.0.7-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/quaternion_operation-release/archive/release/kilted/quaternion_operation/0.0.7-5.tar.gz";
    name = "0.0.7-5.tar.gz";
    sha256 = "8f9e7bb9ac66df4a8ad4a2abbfc54822d4a2b8e2ef15ba29b977c0312861b391";
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
