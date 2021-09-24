
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, cmake, rmf-cmake-uncrustify }:
buildRosPackage {
  pname = "ros-foxy-rmf-utils";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_utils-release/archive/release/foxy/rmf_utils/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "6bdd40ab4b1b0d3d6d1228817d1bd015279b0d616ad5163de4be66f41a60e708";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 rmf-cmake-uncrustify ];

  meta = {
    description = ''Simple C++ programming utilities used by Robotics Middleware Framework packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
