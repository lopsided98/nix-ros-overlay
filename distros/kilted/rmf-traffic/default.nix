
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, eigen3-cmake-module, libccd, rmf-utils }:
buildRosPackage {
  pname = "ros-kilted-rmf-traffic";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/kilted/rmf_traffic/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "930717dc748c5db391b07cd9d290c378f4af66c5eb9f55a19033418dc9ed6bb1";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module libccd rmf-utils ];
  nativeBuildInputs = [ cmake eigen3-cmake-module ];

  meta = {
    description = "Package for managing traffic in the Robotics Middleware Framework";
    license = with lib.licenses; [ asl20 ];
  };
}
