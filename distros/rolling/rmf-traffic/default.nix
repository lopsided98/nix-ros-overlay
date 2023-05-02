
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, eigen3-cmake-module, libccd, rmf-utils }:
buildRosPackage {
  pname = "ros-rolling-rmf-traffic";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/rolling/rmf_traffic/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "551eeda2860981b2fb604d5248a52edbee0f34a5fab1a7d741d30b1fff903214";
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
