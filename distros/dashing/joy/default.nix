
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-dashing-joy";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/dashing/joy/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "ed4fec41261bc3b2625344f595726b395e3feeefd03adeb782936770e2770190";
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
