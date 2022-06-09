
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, eigen, rmf-battery, rmf-cmake-uncrustify, rmf-utils }:
buildRosPackage {
  pname = "ros-humble-rmf-task";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/humble/rmf_task/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "ec9ab404b43c19a58ae2d759d8726dc98c34410edd065649d736a589f669a261";
  };

  buildType = "cmake";
  checkInputs = [ ament-cmake-catch2 rmf-cmake-uncrustify ];
  propagatedBuildInputs = [ eigen rmf-battery rmf-utils ];

  meta = {
    description = ''Package for managing tasks in the Robotics Middleware Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
