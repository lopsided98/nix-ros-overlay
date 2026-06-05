
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, geometry-msgs, qt5, rcl-interfaces, rclcpp, rclcpp-action, rosidl-default-generators, rosidl-default-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-turtlesim";
  version = "1.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_tutorials-release/archive/release/jazzy/turtlesim/1.8.4-1.tar.gz";
    name = "1.8.4-1.tar.gz";
    sha256 = "2e2ffe6a5e87667ed6930618f9a3278d7309a0f036d263191f59aac7fe85a0c0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp geometry-msgs qt5.qtbase rcl-interfaces rclcpp rclcpp-action rosidl-default-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "turtlesim is a tool made for teaching ROS and ROS packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
