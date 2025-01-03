
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, eigen3-cmake-module, libccd, rmf-utils }:
buildRosPackage {
  pname = "ros-jazzy-rmf-traffic";
  version = "3.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/jazzy/rmf_traffic/3.3.3-1.tar.gz";
    name = "3.3.3-1.tar.gz";
    sha256 = "2294ae01ec5c6e3b19aa6e83a4fbb71e435a97b521507768961187f4a447312b";
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
