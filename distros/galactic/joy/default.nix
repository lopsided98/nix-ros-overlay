
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, sdl2-vendor, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-joy";
  version = "3.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/galactic/joy/3.0.0-5.tar.gz";
    name = "3.0.0-5.tar.gz";
    sha256 = "13d8538dba3dabeefd35552b6ae02fa9e60b1f4ec2cfed070d4b3860ef478c97";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components sdl2-vendor sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The joy package contains joy_node, a node that interfaces a
    generic joystick to ROS 2. This node publishes a &quot;Joy&quot;
    message, which contains the current state of each one of the
    joystick's buttons and axes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
