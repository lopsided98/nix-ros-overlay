
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clips-vendor, cx-plugin, cx-utils, icu, pluginlib, rclcpp, rcutils, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-rolling-cx-ros-msgs-plugin";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/rolling/cx_ros_msgs_plugin/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "2e4f03ab83cc86acec18972a497bfc38ad75a27a3db7376d58bdef7859d217bd";
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
