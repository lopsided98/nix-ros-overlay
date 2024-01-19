
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, libGL, libGLU, suitesparse }:
buildRosPackage {
  pname = "ros-humble-libg2o";
  version = "2020.5.29-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libg2o-release/archive/release/humble/libg2o/2020.5.29-4.tar.gz";
    name = "2020.5.29-4.tar.gz";
    sha256 = "2ac3e2b85a05c4c9c0e4526523290c5041a9145568496d5989417e7f71f9cb46";
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
