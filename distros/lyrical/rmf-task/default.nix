
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, cmake, eigen, nlohmann_json, rmf-battery, rmf-utils }:
buildRosPackage {
  pname = "ros-lyrical-rmf-task";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/lyrical/rmf_task/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "8273139a65a80a008c25c8e70ad7460d95018f07dd9357bb92178ed0276f6bf6";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ];
  propagatedBuildInputs = [ eigen nlohmann_json rmf-battery rmf-utils ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Package for managing tasks in the Robotics Middleware Framework";
    license = with lib.licenses; [ asl20 ];
  };
}
