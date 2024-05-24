
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, rmf-battery, rmf-utils }:
buildRosPackage {
  pname = "ros-jazzy-rmf-task";
  version = "2.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/jazzy/rmf_task/2.4.0-3.tar.gz";
    name = "2.4.0-3.tar.gz";
    sha256 = "c2ebd29c9bb801037123aa05392b6528fc31664c1fc0b49034983a41d4cdc142";
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
