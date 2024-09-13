
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cv-bridge, eigen, geos, pkg-config, rclcpp, tf2 }:
buildRosPackage {
  pname = "ros-humble-swri-geometry-util";
  version = "3.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_geometry_util/3.7.1-1.tar.gz";
    name = "3.7.1-1.tar.gz";
    sha256 = "09e961e76bf8f9650cf773c2355c11c69710bf73239b6278d9c31a47db1da9d8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ cv-bridge eigen geos rclcpp tf2 ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "Commonly used geometry routines, implemented in a ROS friendly package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
