
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake }:
buildRosPackage {
  pname = "ros-iron-rmf-utils";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_utils-release/archive/release/iron/rmf_utils/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "3acd77bdfb3219b6c99bfad959c84f41791fcf0911779e41f748a4e0a0ec0a53";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];

  meta = {
    description = ''Simple C++ programming utilities used by Robotics Middleware Framework packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
