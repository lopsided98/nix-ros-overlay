
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, eigen, rmf-battery, rmf-cmake-uncrustify, rmf-utils }:
buildRosPackage {
  pname = "ros-foxy-rmf-task";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/foxy/rmf_task/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "9f2405d882be71c169b3735d07fb1a80c9614c031e6d5cb0df927e360ab17ef5";
  };

  buildType = "cmake";
  checkInputs = [ ament-cmake-catch2 rmf-cmake-uncrustify ];
  propagatedBuildInputs = [ eigen rmf-battery rmf-utils ];

  meta = {
    description = ''Package for managing tasks in the Robotics Middleware Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
