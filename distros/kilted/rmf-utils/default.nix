
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake }:
buildRosPackage {
  pname = "ros-kilted-rmf-utils";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_utils-release/archive/release/kilted/rmf_utils/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "d9b3c9a2ccb52b155c083da01a50e7bfc548dce7d57d7d06c665b1a075401cd4";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];

  meta = {
    description = "Simple C++ programming utilities used by Robotics Middleware Framework packages";
    license = with lib.licenses; [ asl20 ];
  };
}
