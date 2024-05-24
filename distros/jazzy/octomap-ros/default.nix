
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, octomap, octomap-msgs, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-jazzy-octomap-ros";
  version = "0.4.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_ros-release/archive/release/jazzy/octomap_ros/0.4.3-4.tar.gz";
    name = "0.4.3-4.tar.gz";
    sha256 = "68031b80f00cd51d265ad2fba73a8c5401d00e76bbd6963d1e45cb7b661e4e8d";
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
