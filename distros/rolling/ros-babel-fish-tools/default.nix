
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, geometry-msgs, rclcpp, ros-babel-fish, ros-babel-fish-test-msgs, std-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-ros-babel-fish-tools";
  version = "4.26.43-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_babel_fish-release/archive/release/rolling/ros_babel_fish_tools/4.26.43-1.tar.gz";
    name = "4.26.43-1.tar.gz";
    sha256 = "485325f1f087bf4bb47e57c4b2dbd91b09ec16a2c2ebf9a97e0314ab335fb397";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest geometry-msgs ros-babel-fish-test-msgs std-msgs ];
  propagatedBuildInputs = [ rclcpp ros-babel-fish yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Tooling for ROS 2 built on ros_babel_fish.
    Provides header-only JSON and YAML serialization for dynamic messages and a CLI tool to echo topics.";
    license = with lib.licenses; [ mit ];
  };
}
