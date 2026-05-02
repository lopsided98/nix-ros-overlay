
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clips-vendor, cx-plugin, cx-utils, icu, pluginlib, rclcpp, rcutils, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-rolling-cx-ros-msgs-plugin";
  version = "0.1.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/rolling/cx_ros_msgs_plugin/0.1.3-2.tar.gz";
    name = "0.1.3-2.tar.gz";
    sha256 = "ec8626eb6ced50c6db794ee0efb89bb1d9c781a0a19037c5e713914d2ac49972";
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
