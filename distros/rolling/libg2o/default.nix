
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, libGL, libGLU, suitesparse }:
buildRosPackage {
  pname = "ros-rolling-libg2o";
  version = "2020.5.29-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libg2o-release/archive/release/rolling/libg2o/2020.5.29-5.tar.gz";
    name = "2020.5.29-5.tar.gz";
    sha256 = "96aa1ede61ca201602f3ac476b82104bc9ce6a054744d5d1c39c8989cec5fa99";
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
