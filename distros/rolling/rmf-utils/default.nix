
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake }:
buildRosPackage {
  pname = "ros-rolling-rmf-utils";
  version = "1.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_utils-release/archive/release/rolling/rmf_utils/1.6.0-2.tar.gz";
    name = "1.6.0-2.tar.gz";
    sha256 = "7081754ff7a6e18e9b4914599cec98afef18e0aebd9ff960e918f6ccecaf2750";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];

  meta = {
    description = "Simple C++ programming utilities used by Robotics Middleware Framework packages";
    license = with lib.licenses; [ asl20 ];
  };
}
