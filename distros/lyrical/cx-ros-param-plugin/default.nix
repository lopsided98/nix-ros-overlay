
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cx-plugin, cx-utils, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-cx-ros-param-plugin";
  version = "0.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/lyrical/cx_ros_param_plugin/0.1.3-3.tar.gz";
    name = "0.1.3-3.tar.gz";
    sha256 = "6b8ab19b0e8aa108c6002fb1a123a75cd947c8432cbf1551d6c04f69df101b35";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cx-plugin cx-utils pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CLIPS plugin to retrieve ROS params from own or other nodes";
    license = with lib.licenses; [ asl20 ];
  };
}
