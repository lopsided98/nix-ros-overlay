
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, geos, opencv, tf2 }:
buildRosPackage {
  pname = "ros-kilted-swri-geometry-util";
  version = "3.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/kilted/swri_geometry_util/3.12.0-1.tar.gz";
    name = "3.12.0-1.tar.gz";
    sha256 = "80b977a466b387f432437694ee248192061c5da9d3358d4019a10b26c3c90d44";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ geos opencv opencv.cxxdev tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Commonly used geometry routines, implemented in a ROS friendly package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
