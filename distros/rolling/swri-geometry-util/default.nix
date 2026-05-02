
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, geos, opencv, pkg-config, tf2 }:
buildRosPackage {
  pname = "ros-rolling-swri-geometry-util";
  version = "3.8.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_geometry_util/3.8.7-2.tar.gz";
    name = "3.8.7-2.tar.gz";
    sha256 = "c2739fb65f2a5ff52a5131cd6fd8d857e3c24d382da19af662bab97502f68402";
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
