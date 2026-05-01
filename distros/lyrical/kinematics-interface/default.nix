
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, eigen, pluginlib, rclcpp-lifecycle, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-lyrical-kinematics-interface";
  version = "2.4.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/lyrical/kinematics_interface/2.4.0-4.tar.gz";
    name = "2.4.0-4.tar.gz";
    sha256 = "a26588aa19b1785b79ef70423b2b179dd22d8590d1d4d73951c5a6a4abb6af1d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock pluginlib ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros eigen rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Kinematics interface for ROS 2 control";
    license = with lib.licenses; [ asl20 ];
  };
}
