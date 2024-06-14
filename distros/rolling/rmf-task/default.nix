
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, rmf-battery, rmf-utils }:
buildRosPackage {
  pname = "ros-rolling-rmf-task";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/rolling/rmf_task/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "918b5be8becadeb98fab2d964b01630e740f991628461dcf4c47167c672ccb94";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ eigen rmf-battery rmf-utils ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Package for managing tasks in the Robotics Middleware Framework";
    license = with lib.licenses; [ asl20 ];
  };
}
