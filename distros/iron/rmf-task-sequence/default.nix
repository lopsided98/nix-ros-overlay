
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, nlohmann-json-schema-validator-vendor, nlohmann_json, rmf-api-msgs, rmf-task }:
buildRosPackage {
  pname = "ros-iron-rmf-task-sequence";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/iron/rmf_task_sequence/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "43fc6c646910664d69e9b97cffe034760b8d2288142d3aafd63a6ac15f9f41db";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ nlohmann-json-schema-validator-vendor nlohmann_json rmf-api-msgs rmf-task ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Implementation of phase-sequence tasks for the Robotics Middleware Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
