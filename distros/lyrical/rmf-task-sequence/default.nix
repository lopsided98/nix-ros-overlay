
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, nlohmann-json-schema-validator-vendor, nlohmann_json, rmf-api-msgs, rmf-task }:
buildRosPackage {
  pname = "ros-lyrical-rmf-task-sequence";
  version = "2.9.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/lyrical/rmf_task_sequence/2.9.0-3.tar.gz";
    name = "2.9.0-3.tar.gz";
    sha256 = "5a0fac1048e98a837599e2f3798b6f31871735c1af076b5c3046acd90a1150d0";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ nlohmann-json-schema-validator-vendor nlohmann_json rmf-api-msgs rmf-task ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Implementation of phase-sequence tasks for the Robotics Middleware Framework";
    license = with lib.licenses; [ asl20 ];
  };
}
