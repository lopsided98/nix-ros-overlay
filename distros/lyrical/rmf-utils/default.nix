
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake }:
buildRosPackage {
  pname = "ros-lyrical-rmf-utils";
  version = "1.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_utils-release/archive/release/lyrical/rmf_utils/1.7.0-3.tar.gz";
    name = "1.7.0-3.tar.gz";
    sha256 = "a317c42480b66e0c7ea8df491e6e46b492b3ca0a6012689ba173b3979497682c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];

  meta = {
    description = "Simple C++ programming utilities used by Robotics Middleware Framework packages";
    license = with lib.licenses; [ asl20 ];
  };
}
