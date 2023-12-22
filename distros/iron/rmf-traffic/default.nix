
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, eigen3-cmake-module, libccd, rmf-utils }:
buildRosPackage {
  pname = "ros-iron-rmf-traffic";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/iron/rmf_traffic/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "09156f793aa13e56f55243f5b46f2ff887db4664be0916fed2c2884823bc9f7e";
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
