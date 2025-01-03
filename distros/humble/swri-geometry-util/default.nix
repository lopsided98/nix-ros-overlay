
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cv-bridge, eigen, geos, pkg-config, rclcpp, tf2 }:
buildRosPackage {
  pname = "ros-humble-swri-geometry-util";
  version = "3.7.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_geometry_util/3.7.3-2.tar.gz";
    name = "3.7.3-2.tar.gz";
    sha256 = "6af022490ac83049913306a2f27cdfdcf3db235ed14d46410b020545f9ba46cd";
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
