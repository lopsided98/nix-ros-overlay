
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, libGL, libGLU, suitesparse }:
buildRosPackage {
  pname = "ros-rolling-libg2o";
  version = "2020.5.29-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libg2o-release/archive/release/rolling/libg2o/2020.5.29-3.tar.gz";
    name = "2020.5.29-3.tar.gz";
    sha256 = "d308e857ba2a3697d0b03f7fddc3ad0589423a44fb273d3e759c713ccf2dd5ff";
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
