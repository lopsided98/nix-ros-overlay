
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, octomap, octomap-msgs, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-kilted-octomap-ros";
  version = "0.4.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_ros-release/archive/release/kilted/octomap_ros/0.4.4-2.tar.gz";
    name = "0.4.4-2.tar.gz";
    sha256 = "e7cd2ee71ed8672763c77eb9cb7fec2accc8ce307b175e4f45eb8e61160610d6";
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
