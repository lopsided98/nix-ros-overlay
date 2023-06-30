
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, rmf-battery, rmf-utils }:
buildRosPackage {
  pname = "ros-humble-rmf-task";
  version = "2.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/humble/rmf_task/2.1.5-1.tar.gz";
    name = "2.1.5-1.tar.gz";
    sha256 = "83c4cc097590d96c971310ff791249cf4ea694348eec2e78fde90184589518db";
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
