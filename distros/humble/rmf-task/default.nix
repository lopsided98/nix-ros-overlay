
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, eigen, rmf-battery, rmf-utils }:
buildRosPackage {
  pname = "ros-humble-rmf-task";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/humble/rmf_task/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "4b3146af040070f44d93f2854cdc919d7d57472815abd05f9f3eb3962714cd04";
  };

  buildType = "cmake";
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ eigen rmf-battery rmf-utils ];

  meta = {
    description = ''Package for managing tasks in the Robotics Middleware Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
