
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, libGL, libGLU, suitesparse }:
buildRosPackage {
  pname = "ros-iron-libg2o";
  version = "2020.5.29-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libg2o-release/archive/release/iron/libg2o/2020.5.29-5.tar.gz";
    name = "2020.5.29-5.tar.gz";
    sha256 = "6d3c63e8193b9ba7dd5aa2fac7ae264b53dc61aa6081b56e69a456fb198955af";
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
