
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, eigen, pluginlib, rclcpp, rclcpp-lifecycle, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-lyrical-kinematics-interface";
  version = "2.4.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/lyrical/kinematics_interface/2.4.3-2.tar.gz";
    name = "2.4.3-2.tar.gz";
    sha256 = "00b47f146c5c78a7e7b26cb40d11aaaeaaf4838f8d23b191523c2669f47262e2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock pluginlib ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros eigen rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Kinematics interface for ROS 2 control";
    license = with lib.licenses; [ asl20 ];
  };
}
