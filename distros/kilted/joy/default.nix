
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, sdl2-vendor, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-joy";
  version = "3.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/kilted/joy/3.3.0-3.tar.gz";
    name = "3.3.0-3.tar.gz";
    sha256 = "86be88799530572230ecbad7a10faf7433ef24de17c779ca5721db043bd92c2d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components sdl2-vendor sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "The joy package contains joy_node, a node that interfaces a generic joystick to ROS
    2. This node publishes a &quot;Joy&quot; message, which contains the current state of each one of the
    joystick's buttons and axes.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
