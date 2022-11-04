
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, libGL, libGLU, suitesparse }:
buildRosPackage {
  pname = "ros-galactic-libg2o";
  version = "2020.5.29-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libg2o-release/archive/release/galactic/libg2o/2020.5.29-3.tar.gz";
    name = "2020.5.29-3.tar.gz";
    sha256 = "9bebbccd56e96a9a011cf6aa1c1fcb6f8a71b26f1d1b40589249bf6c43125c76";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen libGL libGLU suitesparse ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The libg2o library from http://openslam.org/g2o.html'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
