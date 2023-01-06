
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake }:
buildRosPackage {
  pname = "ros-humble-rmf-utils";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_utils-release/archive/release/humble/rmf_utils/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "7b9c348b18b9195a31bfd8acd239f83994f333ad532228b6179b89080e5b4bbb";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];

  meta = {
    description = ''Simple C++ programming utilities used by Robotics Middleware Framework packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
