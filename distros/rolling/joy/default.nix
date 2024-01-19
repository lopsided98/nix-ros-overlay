
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, sdl2-vendor, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-joy";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/rolling/joy/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "02e1a15babd1d9460302ea1dfc2fe2392a5eca59e2c76387bae99785d7139274";
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
