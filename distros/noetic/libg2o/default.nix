
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, eigen, libGL, libGLU, suitesparse }:
buildRosPackage {
  pname = "ros-noetic-libg2o";
  version = "2020.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/libg2o-release/archive/release/noetic/libg2o/2020.5.3-1.tar.gz";
    name = "2020.5.3-1.tar.gz";
    sha256 = "115c41cdce39bc27adf6522557b97749db1624a0692316486a855689b345dcb4";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost catkin eigen libGL libGLU suitesparse ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The libg2o library from http://openslam.org/g2o.html'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
