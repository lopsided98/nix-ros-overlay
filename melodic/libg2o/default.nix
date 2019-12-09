
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, libGLU, cmake, suitesparse, libGL, eigen }:
buildRosPackage {
  pname = "ros-melodic-libg2o";
  version = "2018.3.25";

  src = fetchurl {
    url = "https://github.com/ros-gbp/libg2o-release/archive/release/melodic/libg2o/2018.3.25-0.tar.gz";
    name = "2018.3.25-0.tar.gz";
    sha256 = "b904a96dd4edffa57b21856d75d7d0bf9b064921e330012922c67a545ee54f6a";
  };

  buildType = "cmake";
  buildInputs = [ boost libGLU libGL suitesparse eigen ];
  propagatedBuildInputs = [ boost catkin libGLU libGL suitesparse eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The libg2o library from http://openslam.org/g2o.html'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
