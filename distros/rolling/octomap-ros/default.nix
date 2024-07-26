
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, octomap, octomap-msgs, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-rolling-octomap-ros";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_ros-release/archive/release/rolling/octomap_ros/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "804a5a0443b999e5ffd0c6817be666cfe1d2af5a607166390a1e08d52f890b16";
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
