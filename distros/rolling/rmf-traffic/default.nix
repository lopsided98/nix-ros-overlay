
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, eigen3-cmake-module, libccd, rmf-utils }:
buildRosPackage {
  pname = "ros-rolling-rmf-traffic";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/rolling/rmf_traffic/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "264a221a0b78398c88ecba45a5a1f16b010f4cfdf413fb7056a3f4a459a59ada";
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
