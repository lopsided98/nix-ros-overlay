
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, sdl2-vendor, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-joy";
  version = "3.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/lyrical/joy/3.3.0-4.tar.gz";
    name = "3.3.0-4.tar.gz";
    sha256 = "07ea7a77cb69b54eafa519f0cfc081028a14c39551c1c201785187a8a7b88694";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components sdl2-vendor sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "The joy package contains joy_node, a node that interfaces a generic joystick to ROS
    2. This node publishes a \"Joy\" message, which contains the current state of each one of the
    joystick's buttons and axes.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
