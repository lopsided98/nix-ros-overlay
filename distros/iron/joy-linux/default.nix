
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-joy-linux";
  version = "3.1.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/iron/joy_linux/3.1.0-4.tar.gz";
    name = "3.1.0-4.tar.gz";
    sha256 = "9aabffb27cac0456cf28c48f496bcce808366ca0428717b0f987e8beb89711ae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater rclcpp sensor-msgs ];
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
