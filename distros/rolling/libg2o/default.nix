
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, libGL, libGLU, suitesparse }:
buildRosPackage {
  pname = "ros-rolling-libg2o";
  version = "2020.5.29-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libg2o-release/archive/release/rolling/libg2o/2020.5.29-6.tar.gz";
    name = "2020.5.29-6.tar.gz";
    sha256 = "6e1d97bfe6f6316faf55f45d3a065d821c158b5213354fd378f2404dcff01e16";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen libGL libGLU suitesparse ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The libg2o library from http://openslam.org/g2o.html";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
