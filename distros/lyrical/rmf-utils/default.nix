
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake }:
buildRosPackage {
  pname = "ros-lyrical-rmf-utils";
  version = "1.8.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_utils-release/archive/release/lyrical/rmf_utils/1.8.1-2.tar.gz";
    name = "1.8.1-2.tar.gz";
    sha256 = "cf42001c332f025fed4978e7ce875326fc71c787dd371a22474cbd1f87fb14ea";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];

  meta = {
    description = "Simple C++ programming utilities used by Robotics Middleware Framework packages";
    license = with lib.licenses; [ asl20 ];
  };
}
