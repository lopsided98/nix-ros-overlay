
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, libGL, libGLU, suitesparse }:
buildRosPackage {
  pname = "ros-foxy-libg2o";
  version = "2020.5.29-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libg2o-release/archive/release/foxy/libg2o/2020.5.29-1.tar.gz";
    name = "2020.5.29-1.tar.gz";
    sha256 = "a7e42da8c6c3cff4fe286b74e86101a27ef037a6cd1f935a6070473213dcb5b9";
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
