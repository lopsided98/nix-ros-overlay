
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, geometry-msgs, launch, launch-ros, qt6, rcl-interfaces, rclcpp, rclcpp-action, std-srvs, turtlesim-msgs }:
buildRosPackage {
  pname = "ros-rolling-turtlesim";
  version = "1.11.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_tutorials-release/archive/release/rolling/turtlesim/1.11.4-1.tar.gz";
    name = "1.11.4-1.tar.gz";
    sha256 = "e99ef3cb781f0dc179e274d52977c84ffc3644149084da1579c1456f29a5897f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp geometry-msgs launch launch-ros qt6.qtbase rcl-interfaces rclcpp rclcpp-action std-srvs turtlesim-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "turtlesim is a tool made for teaching ROS and ROS packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
