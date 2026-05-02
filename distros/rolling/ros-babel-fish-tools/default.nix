
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, geometry-msgs, rclcpp, ros-babel-fish, ros-babel-fish-test-msgs, std-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-ros-babel-fish-tools";
  version = "4.26.43-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_babel_fish-release/archive/release/rolling/ros_babel_fish_tools/4.26.43-2.tar.gz";
    name = "4.26.43-2.tar.gz";
    sha256 = "c379e2e945b33a174f5d9de7d53a845bc6a38be333d77b6ff801252b6cb020be";
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
