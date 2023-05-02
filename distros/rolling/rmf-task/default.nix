
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, rmf-battery, rmf-utils }:
buildRosPackage {
  pname = "ros-rolling-rmf-task";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/rolling/rmf_task/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "e037caf4a2b4eb310d58c0c555e9b85b32c28396098a792b6eb759018bbaa20c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ eigen rmf-battery rmf-utils ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Package for managing tasks in the Robotics Middleware Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
