
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, nlohmann-json-schema-validator-vendor, nlohmann_json, rmf-api-msgs, rmf-task }:
buildRosPackage {
  pname = "ros-rolling-rmf-task-sequence";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/rolling/rmf_task_sequence/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "1d1c0d9931cd3f13b96056576dd36354bdce856a4351a243e4b94a956c14227a";
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
