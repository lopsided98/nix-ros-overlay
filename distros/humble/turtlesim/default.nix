
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, geometry-msgs, qt5, rclcpp, rclcpp-action, rosidl-default-generators, rosidl-default-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-turtlesim";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_tutorials-release/archive/release/rolling/turtlesim/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "4790460ab3745e6f64057c0a1fc334348d7b55ed9905cb36a4143a177e1ea73a";
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
