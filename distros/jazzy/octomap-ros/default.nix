
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, octomap, octomap-msgs, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-jazzy-octomap-ros";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_ros-release/archive/release/jazzy/octomap_ros/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "c55cf6126ec99e621b4598b8f28b19a104331291fc35ec81dfd851f7b13e34ee";
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
