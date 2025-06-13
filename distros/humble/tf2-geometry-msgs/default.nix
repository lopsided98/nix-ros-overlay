
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, geometry-msgs, orocos-kdl-vendor, python-cmake-module, python3Packages, rclcpp, tf2, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-humble-tf2-geometry-msgs";
  version = "0.25.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/tf2_geometry_msgs/0.25.13-1.tar.gz";
    name = "0.25.13-1.tar.gz";
    sha256 = "613823e1a9f4b493abc763f106f2ceeef87d551d1db3c38459a5e683a9b4e2ee";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common rclcpp ];
  propagatedBuildInputs = [ geometry-msgs orocos-kdl-vendor python3Packages.numpy tf2 tf2-ros tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake python-cmake-module ];

  meta = {
    description = "tf2_geometry_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
