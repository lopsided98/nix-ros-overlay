
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, geometry-msgs, qt6, rclcpp, rclcpp-action, std-msgs, std-srvs, turtlesim-msgs }:
buildRosPackage {
  pname = "ros-rolling-turtlesim";
  version = "1.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_tutorials-release/archive/release/rolling/turtlesim/1.11.1-1.tar.gz";
    name = "1.11.1-1.tar.gz";
    sha256 = "a985a87111d04207a275bb202dec7168f65add32acfd58a293cd0dacff94abd0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp geometry-msgs qt6.qtbase rclcpp rclcpp-action std-msgs std-srvs turtlesim-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "turtlesim is a tool made for teaching ROS and ROS packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
