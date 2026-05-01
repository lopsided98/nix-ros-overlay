
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, libGL, libGLU, suitesparse }:
buildRosPackage {
  pname = "ros-lyrical-libg2o";
  version = "2020.5.29-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libg2o-release/archive/release/lyrical/libg2o/2020.5.29-7.tar.gz";
    name = "2020.5.29-7.tar.gz";
    sha256 = "5ca328ca4d67505aeb74d0fe82911e9e869746389902b37499e9b4a24d47ff38";
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
