
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake }:
buildRosPackage {
  pname = "ros-rolling-rmf-utils";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_utils-release/archive/release/rolling/rmf_utils/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "a989a13a82b68cfbebecb5198d22db3c04ff5795b372abf59ee7483242bf226f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];

  meta = {
    description = ''Simple C++ programming utilities used by Robotics Middleware Framework packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
