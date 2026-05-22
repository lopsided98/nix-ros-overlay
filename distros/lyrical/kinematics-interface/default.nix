
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, eigen, pluginlib, rclcpp, rclcpp-lifecycle, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-lyrical-kinematics-interface";
  version = "2.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/lyrical/kinematics_interface/2.4.2-1.tar.gz";
    name = "2.4.2-1.tar.gz";
    sha256 = "b57b07da8eae25a137314b49c22abfc9a3e627702f23d9bb5d49c06cf85724cf";
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
