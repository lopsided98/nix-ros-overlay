
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, geos, opencv, pkg-config, tf2 }:
buildRosPackage {
  pname = "ros-humble-swri-geometry-util";
  version = "3.8.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_geometry_util/3.8.9-1.tar.gz";
    name = "3.8.9-1.tar.gz";
    sha256 = "f8bed57998f4da2edb60ccce80089e8cc7077d014ca06cc026b4bcc5f3ab855e";
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
