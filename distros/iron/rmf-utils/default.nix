
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake }:
buildRosPackage {
  pname = "ros-iron-rmf-utils";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_utils-release/archive/release/iron/rmf_utils/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "c8d5f36c9fab9fa311a745ba880466e61621df72e47c9afe83a0fb3989de1508";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];

  meta = {
    description = ''Simple C++ programming utilities used by Robotics Middleware Framework packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
