
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, rmf-battery, rmf-utils }:
buildRosPackage {
  pname = "ros-humble-rmf-task";
  version = "2.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/humble/rmf_task/2.1.7-1.tar.gz";
    name = "2.1.7-1.tar.gz";
    sha256 = "30a5a266891ced0700b5c1b282a40b451eedc937fa565dea60992fc2355d550e";
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
