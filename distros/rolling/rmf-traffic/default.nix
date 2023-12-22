
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, eigen3-cmake-module, libccd, rmf-utils }:
buildRosPackage {
  pname = "ros-rolling-rmf-traffic";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/rolling/rmf_traffic/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "b94b120d5d525cd630c7bf42d80b54e51e1398634c8778345704bce2e48f0e2c";
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
