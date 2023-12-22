
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, eigen3-cmake-module, libccd, rmf-utils }:
buildRosPackage {
  pname = "ros-humble-rmf-traffic";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/humble/rmf_traffic/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "035e79e7ba394cbe317ff962314f1df23f6ac417a4c20af6d64727624dc6269e";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module libccd rmf-utils ];
  nativeBuildInputs = [ cmake eigen3-cmake-module ];

  meta = {
    description = ''Package for managing traffic in the Robotics Middleware Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
