
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, rclcpp, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-joy";
  version = "2.2.1-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/joystick_drivers-release/archive/release/crystal/joy/2.2.1-1.tar.gz;
    sha256 = "28de8edab84c773926d75918d4dec56c844ff3273a61bbcd098ee0ba710d97dc";
  };

  buildInputs = [ sensor-msgs rclcpp ];
  propagatedBuildInputs = [ sensor-msgs rclcpp ];
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
