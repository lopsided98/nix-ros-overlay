
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, eigen, libGL, libGLU, suitesparse }:
buildRosPackage {
  pname = "ros-melodic-libg2o";
  version = "2018.3.25";

  src = fetchurl {
    url = "https://github.com/ros-gbp/libg2o-release/archive/release/melodic/libg2o/2018.3.25-0.tar.gz";
    name = "2018.3.25-0.tar.gz";
    sha256 = "b904a96dd4edffa57b21856d75d7d0bf9b064921e330012922c67a545ee54f6a";
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
