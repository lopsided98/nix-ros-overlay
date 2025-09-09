
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, nlohmann_json, rmf-battery, rmf-utils }:
buildRosPackage {
  pname = "ros-kilted-rmf-task";
  version = "2.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/kilted/rmf_task/2.7.0-2.tar.gz";
    name = "2.7.0-2.tar.gz";
    sha256 = "df5a12591fe05236142e4d9024b71357b2ab164354f1a5f8811a0abe4b5ae30f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ eigen nlohmann_json rmf-battery rmf-utils ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Package for managing tasks in the Robotics Middleware Framework";
    license = with lib.licenses; [ asl20 ];
  };
}
