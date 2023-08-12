
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, nlohmann-json-schema-validator-vendor, nlohmann_json, rmf-api-msgs, rmf-task }:
buildRosPackage {
  pname = "ros-iron-rmf-task-sequence";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/iron/rmf_task_sequence/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "71dcf34028aea12e01c9891b917c4f28c07dd27d085edd13835b26ed6ed82e0d";
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
