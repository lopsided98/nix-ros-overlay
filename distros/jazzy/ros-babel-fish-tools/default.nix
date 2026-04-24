
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, geometry-msgs, rclcpp, ros-babel-fish, ros-babel-fish-test-msgs, std-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-ros-babel-fish-tools";
  version = "2.26.40-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_babel_fish-release/archive/release/jazzy/ros_babel_fish_tools/2.26.40-1.tar.gz";
    name = "2.26.40-1.tar.gz";
    sha256 = "79fc6127092d4fa829a44938480c9dd490617e58074ea43188f4ba33f53aae10";
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
