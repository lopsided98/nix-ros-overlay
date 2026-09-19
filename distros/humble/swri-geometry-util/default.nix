
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, geos, opencv, tf2 }:
buildRosPackage {
  pname = "ros-humble-swri-geometry-util";
  version = "3.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_geometry_util/3.11.0-1.tar.gz";
    name = "3.11.0-1.tar.gz";
    sha256 = "35f360b222720fe9f84ffbabae1f3028dde20801f902ccd8293a792096c86c11";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ eigen geos opencv opencv.cxxdev tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Commonly used geometry routines, implemented in a ROS friendly package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
