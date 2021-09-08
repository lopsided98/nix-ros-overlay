
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, eigen, rmf-battery, rmf-cmake-uncrustify, rmf-utils }:
buildRosPackage {
  pname = "ros-galactic-rmf-task";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/galactic/rmf_task/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "c395182e16a2b6944aa77ee9c57678d02a8c0c53f9db9d52ab6030a95db43d35";
  };

  buildType = "cmake";
  checkInputs = [ ament-cmake-catch2 rmf-cmake-uncrustify ];
  propagatedBuildInputs = [ eigen rmf-battery rmf-utils ];

  meta = {
    description = ''Package for managing tasks in the Robotics Middleware Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
