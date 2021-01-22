
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, eigen, libGL, libGLU, suitesparse }:
buildRosPackage {
  pname = "ros-kinetic-libg2o";
  version = "2016.4.24";

  src = fetchurl {
    url = "https://github.com/ros-gbp/libg2o-release/archive/release/kinetic/libg2o/2016.4.24-0.tar.gz";
    name = "2016.4.24-0.tar.gz";
    sha256 = "843d00cb59a237f72d48164cb4aa7c92eb05756d8498065b064d16ec78fae326";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ boost catkin eigen libGL libGLU suitesparse ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The libg2o library from http://openslam.org/g2o.html'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
