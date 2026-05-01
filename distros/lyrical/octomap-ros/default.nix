
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, octomap, octomap-msgs, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-lyrical-octomap-ros";
  version = "0.4.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_ros-release/archive/release/lyrical/octomap_ros/0.4.5-3.tar.gz";
    name = "0.4.5-3.tar.gz";
    sha256 = "2d5c89adba9e6775c00288c5dcf98d05d6876cea291d43ef11c5edc72f3f4bea";
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
