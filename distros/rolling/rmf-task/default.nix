
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, nlohmann_json, rmf-battery, rmf-utils }:
buildRosPackage {
  pname = "ros-rolling-rmf-task";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/rolling/rmf_task/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "d87171e7a5a374eb7a88306bf0f30a0c91ddfddf0c0118ddf7ec9db52f8c1edc";
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
