
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake }:
buildRosPackage {
  pname = "ros-humble-rmf-utils";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_utils-release/archive/release/humble/rmf_utils/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "da315c10649b51f155d3395fa20da85dea446431a8c6fcb6faafaddd47247e12";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];

  meta = {
    description = ''Simple C++ programming utilities used by Robotics Middleware Framework packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
