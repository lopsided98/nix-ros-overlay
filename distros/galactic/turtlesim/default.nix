
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, geometry-msgs, qt5, rclcpp, rclcpp-action, rosidl-default-generators, rosidl-default-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-galactic-turtlesim";
  version = "1.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_tutorials-release/archive/release/galactic/turtlesim/1.3.4-1.tar.gz";
    name = "1.3.4-1.tar.gz";
    sha256 = "3ef3ffd2d5fc8eadf843c3e20db101220abed41e6636eb84533f89bea8f793ca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ ament-index-cpp geometry-msgs qt5.qtbase rclcpp rclcpp-action rosidl-default-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''turtlesim is a tool made for teaching ROS and ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
