
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, suitesparse, boost, catkin, cmake, eigen, libGLU, libGL }:
buildRosPackage {
  pname = "ros-kinetic-libg2o";
  version = "2016.4.24";

  src = fetchurl {
    url = https://github.com/ros-gbp/libg2o-release/archive/release/kinetic/libg2o/2016.4.24-0.tar.gz;
    sha256 = "843d00cb59a237f72d48164cb4aa7c92eb05756d8498065b064d16ec78fae326";
  };

  buildInputs = [ suitesparse boost eigen libGLU libGL ];
  propagatedBuildInputs = [ libGL suitesparse boost eigen libGLU catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The libg2o library from http://openslam.org/g2o.html'';
    #license = lib.licenses.BSD;
  };
}
