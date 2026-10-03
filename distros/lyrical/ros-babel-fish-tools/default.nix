
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, example-interfaces, geometry-msgs, lz4, rclcpp, ros-babel-fish, ros-babel-fish-test-msgs, std-msgs, yaml-cpp-vendor, zstd }:
buildRosPackage {
  pname = "ros-lyrical-ros-babel-fish-tools";
  version = "4.26.90-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_babel_fish-release/archive/release/lyrical/ros_babel_fish_tools/4.26.90-1.tar.gz";
    name = "4.26.90-1.tar.gz";
    sha256 = "800ab943c96e48955f65a3bbe0ab1a96f830696ee71995f8b854928674197744";
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
