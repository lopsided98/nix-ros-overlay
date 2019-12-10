
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-eloquent-joy";
  version = "2.3.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/eloquent/joy/2.3.2-3.tar.gz";
    name = "2.3.2-3.tar.gz";
    sha256 = "b1ccd79b358c5566967104a9cd824ffcc55a804da066127b0aa24ba233f8830e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 driver for a generic Linux joystick.
    Will contain a MacOS and Windows version later.
    The joy package contains joy_node, a node that interfaces a
    generic Linux joystick to ROS2. This node publishes a &quot;Joy&quot;
    message, which contains the current state of each one of the
    joystick's buttons and axes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
