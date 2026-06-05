
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, geos, opencv, pkg-config, tf2 }:
buildRosPackage {
  pname = "ros-rolling-swri-geometry-util";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_geometry_util/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "6b247323af10b493d103fd6b4d6b3889e4e7b1c66772666b4c3f66523b972f52";
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
