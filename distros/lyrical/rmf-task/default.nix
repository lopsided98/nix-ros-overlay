
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, nlohmann_json, rmf-battery, rmf-utils }:
buildRosPackage {
  pname = "ros-lyrical-rmf-task";
  version = "2.9.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/lyrical/rmf_task/2.9.0-3.tar.gz";
    name = "2.9.0-3.tar.gz";
    sha256 = "2a0124de6e99dc965f029953c6838c8a75b6139d9f65d0d7b8bbafb9438317be";
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
