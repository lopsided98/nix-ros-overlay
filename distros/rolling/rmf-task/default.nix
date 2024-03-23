
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, rmf-battery, rmf-utils }:
buildRosPackage {
  pname = "ros-rolling-rmf-task";
  version = "2.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/rolling/rmf_task/2.4.0-2.tar.gz";
    name = "2.4.0-2.tar.gz";
    sha256 = "b53282c5b96061112fa52b2d973efcc43c743296be71c39301af04d893fdca46";
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
