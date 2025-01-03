
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake }:
buildRosPackage {
  pname = "ros-jazzy-rmf-utils";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_utils-release/archive/release/jazzy/rmf_utils/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "31fdf59c784a2e3a80d0ea1ed4fb692686e9d06490290730ec4535b5861e205b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];

  meta = {
    description = "Simple C++ programming utilities used by Robotics Middleware Framework packages";
    license = with lib.licenses; [ asl20 ];
  };
}
