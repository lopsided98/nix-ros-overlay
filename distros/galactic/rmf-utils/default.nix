
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, cmake, rmf-cmake-uncrustify }:
buildRosPackage {
  pname = "ros-galactic-rmf-utils";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_utils-release/archive/release/galactic/rmf_utils/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "88ba1f6a4a78fe123faafc7674e8e80d92e55e154fe9c909bccae8c3d1b171d5";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 rmf-cmake-uncrustify ];

  meta = {
    description = ''Simple C++ programming utilities used by Robotics Middleware Framework packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
