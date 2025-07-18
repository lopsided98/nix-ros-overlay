
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, libGL, libGLU, suitesparse }:
buildRosPackage {
  pname = "ros-kilted-libg2o";
  version = "2020.5.29-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libg2o-release/archive/release/kilted/libg2o/2020.5.29-6.tar.gz";
    name = "2020.5.29-6.tar.gz";
    sha256 = "cbe7a77419b2a9ebd2ff84a52719a050492d0aa0b14af1dab2384c06fd132476";
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
