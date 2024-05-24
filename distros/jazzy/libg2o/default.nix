
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, libGL, libGLU, suitesparse }:
buildRosPackage {
  pname = "ros-jazzy-libg2o";
  version = "2020.5.29-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libg2o-release/archive/release/jazzy/libg2o/2020.5.29-6.tar.gz";
    name = "2020.5.29-6.tar.gz";
    sha256 = "f0907d7edcaf3d8906e61694b2e5ece9a95a93f48a75cc7a74b4b7469a276bf1";
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
