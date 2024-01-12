
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, libGL, libGLU, suitesparse }:
buildRosPackage {
  pname = "ros-rolling-libg2o";
  version = "2020.5.29-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libg2o-release/archive/release/rolling/libg2o/2020.5.29-4.tar.gz";
    name = "2020.5.29-4.tar.gz";
    sha256 = "8fa85f6f14156653a28b8f2a078201c0e49667156113925b00e792e28d704707";
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
