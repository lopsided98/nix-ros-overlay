
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, eigen3-cmake-module, libccd, rmf-utils }:
buildRosPackage {
  pname = "ros-lyrical-rmf-traffic";
  version = "3.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/lyrical/rmf_traffic/3.7.0-3.tar.gz";
    name = "3.7.0-3.tar.gz";
    sha256 = "4103af46d6007f0d2a6e87058b44c9346da39e0196a4947dcffce5ba125027d3";
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
