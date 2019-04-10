
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, suitesparse, boost, catkin, cmake, eigen, libGLU, libGL }:
buildRosPackage {
  pname = "ros-lunar-libg2o";
  version = "2017.4.2-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/libg2o-release/archive/release/lunar/libg2o/2017.4.2-1.tar.gz;
    sha256 = "9364f946e8412b3f6b45b91bfd05563616ee6fc37fb22e8c31970495f0e108ce";
  };

  buildInputs = [ suitesparse boost eigen libGLU libGL ];
  propagatedBuildInputs = [ libGL suitesparse boost eigen libGLU catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The libg2o library from http://openslam.org/g2o.html'';
    #license = lib.licenses.BSD;
  };
}
