
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, eigen, geometry-msgs, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-quaternion-operation";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/quaternion_operation-release/archive/release/foxy/quaternion_operation/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "d7e198b295cc882d61d06f917c385e3858835b58a1fb1c6d9f56d6515577b9e6";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-auto eigen geometry-msgs rclcpp tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The quaternion_operation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
