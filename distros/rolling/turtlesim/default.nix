
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, geometry-msgs, qt5, rcl-interfaces, rclcpp, rclcpp-action, rosidl-default-generators, rosidl-default-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-turtlesim";
  version = "1.8.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_tutorials-release/archive/release/rolling/turtlesim/1.8.1-2.tar.gz";
    name = "1.8.1-2.tar.gz";
    sha256 = "ce3762d588b077906ce39b14e9cff515372645e3954bd0fac71261c791d4a140";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp geometry-msgs qt5.qtbase rcl-interfaces rclcpp rclcpp-action rosidl-default-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''turtlesim is a tool made for teaching ROS and ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
