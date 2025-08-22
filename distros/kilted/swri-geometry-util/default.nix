
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, geos, opencv, pkg-config, tf2 }:
buildRosPackage {
  pname = "ros-kilted-swri-geometry-util";
  version = "3.8.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/kilted/swri_geometry_util/3.8.7-1.tar.gz";
    name = "3.8.7-1.tar.gz";
    sha256 = "4acad457c8fd2f7fb97717996ddf9ca38b7ccfdef8038e7e9d7ae5ce4b325bd7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ eigen geos opencv opencv.cxxdev tf2 ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "Commonly used geometry routines, implemented in a ROS friendly package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
