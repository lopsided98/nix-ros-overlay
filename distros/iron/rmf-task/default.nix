
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, rmf-battery, rmf-utils }:
buildRosPackage {
  pname = "ros-iron-rmf-task";
  version = "2.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/iron/rmf_task/2.2.5-1.tar.gz";
    name = "2.2.5-1.tar.gz";
    sha256 = "ab5be977e3d2795231c5a93587be6dbe083421976dd38dfbbf3eafa7f38ae515";
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
