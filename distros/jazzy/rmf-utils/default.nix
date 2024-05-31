
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake }:
buildRosPackage {
  pname = "ros-jazzy-rmf-utils";
  version = "1.6.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_utils-release/archive/release/jazzy/rmf_utils/1.6.0-3.tar.gz";
    name = "1.6.0-3.tar.gz";
    sha256 = "513748872c9cfa79124b7673d456ba7395c111ced92720084e1953b9f595d7b9";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];

  meta = {
    description = "Simple C++ programming utilities used by Robotics Middleware Framework packages";
    license = with lib.licenses; [ asl20 ];
  };
}
