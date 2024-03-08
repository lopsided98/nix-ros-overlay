
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, sdl2-vendor, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-joy";
  version = "3.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/rolling/joy/3.3.0-2.tar.gz";
    name = "3.3.0-2.tar.gz";
    sha256 = "506b628013f98cc7102f2ab19d684c170d82398473a561a25e37db7f95a82838";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components sdl2-vendor sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The joy package contains joy_node, a node that interfaces a generic joystick to ROS
    2. This node publishes a &quot;Joy&quot; message, which contains the current state of each one of the
    joystick's buttons and axes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
