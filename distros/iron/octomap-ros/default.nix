
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, octomap, octomap-msgs, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-iron-octomap-ros";
  version = "0.4.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_ros-release/archive/release/iron/octomap_ros/0.4.3-3.tar.gz";
    name = "0.4.3-3.tar.gz";
    sha256 = "c40e2e4d5de430ba4fb697440ea97b14dd8f7cd0b144ab05c96eee78eae47ff3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ octomap octomap-msgs sensor-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''octomap_ros provides conversion functions between ROS and OctoMap's native types.
    This enables a convenvient use of the octomap package in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
