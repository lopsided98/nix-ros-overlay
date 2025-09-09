
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, geometry-msgs, qt5, rclcpp, rclcpp-action, std-msgs, std-srvs, turtlesim-msgs }:
buildRosPackage {
  pname = "ros-kilted-turtlesim";
  version = "1.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_tutorials-release/archive/release/kilted/turtlesim/1.9.3-1.tar.gz";
    name = "1.9.3-1.tar.gz";
    sha256 = "d8941f5f523c8d3b7250ee207ae0ea76164cc6f23aacaf3108e7d24746fe4a20";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp geometry-msgs qt5.qtbase rclcpp rclcpp-action std-msgs std-srvs turtlesim-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "turtlesim is a tool made for teaching ROS and ROS packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
