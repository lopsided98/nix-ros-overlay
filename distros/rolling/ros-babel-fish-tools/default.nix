
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, example-interfaces, geometry-msgs, lz4, rclcpp, ros-babel-fish, ros-babel-fish-test-msgs, std-msgs, yaml-cpp-vendor, zstd }:
buildRosPackage {
  pname = "ros-rolling-ros-babel-fish-tools";
  version = "5.26.90-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_babel_fish-release/archive/release/rolling/ros_babel_fish_tools/5.26.90-1.tar.gz";
    name = "5.26.90-1.tar.gz";
    sha256 = "beb6460ecf23550cb31151e712fe9933c9c074d65104d936983725fbb67714fd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest example-interfaces geometry-msgs ros-babel-fish-test-msgs std-msgs ];
  propagatedBuildInputs = [ lz4 rclcpp ros-babel-fish yaml-cpp-vendor zstd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Tooling for ROS 2 built on ros_babel_fish.
    Provides header-only JSON and YAML serialization for dynamic messages and a CLI tool to echo topics.";
    license = with lib.licenses; [ mit ];
  };
}
