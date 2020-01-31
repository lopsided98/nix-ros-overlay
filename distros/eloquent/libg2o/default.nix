
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, libGL, libGLU, suitesparse }:
buildRosPackage {
  pname = "ros-eloquent-libg2o";
  version = "2019.11.23-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libg2o-release/archive/release/eloquent/libg2o/2019.11.23-4.tar.gz";
    name = "2019.11.23-4.tar.gz";
    sha256 = "f6f9b7c58d714f352fde9869161d54db868fa024adde88506eb0e74e6b4bcc11";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ eigen libGL libGLU suitesparse ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The libg2o library from http://openslam.org/g2o.html'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
