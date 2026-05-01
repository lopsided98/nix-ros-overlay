
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clips-vendor, cx-plugin, cx-utils, icu, pluginlib, rclcpp, rcutils, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-lyrical-cx-ros-msgs-plugin";
  version = "0.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/lyrical/cx_ros_msgs_plugin/0.1.3-3.tar.gz";
    name = "0.1.3-3.tar.gz";
    sha256 = "8ab80170068055977a99a3e8cb770fd6e4267b1c5be6afacd78f08c3a479693e";
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
