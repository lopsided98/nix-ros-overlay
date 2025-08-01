
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clips-vendor, cx-plugin, cx-utils, icu, pluginlib, rclcpp, rcutils, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-kilted-cx-ros-msgs-plugin";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/kilted/cx_ros_msgs_plugin/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "77c6ecbf993e78a5b15ffb2c6ad38d69c5a2020dae29ee58451641a5e7ddd9b5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clips-vendor cx-plugin cx-utils icu pluginlib rclcpp rcutils rosidl-typesupport-cpp rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CLIPS plugin for using generic ROS topics via introspection API";
    license = with lib.licenses; [ asl20 ];
  };
}
