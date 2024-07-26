
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, octomap, octomap-msgs, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-iron-octomap-ros";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_ros-release/archive/release/iron/octomap_ros/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "3e8f44d883a226668a7d88f320949b6e12465b3ca8962452eb9c044f8fbfa0d0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ octomap octomap-msgs sensor-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "octomap_ros provides conversion functions between ROS and OctoMap's native types.
    This enables a convenvient use of the octomap package in ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
