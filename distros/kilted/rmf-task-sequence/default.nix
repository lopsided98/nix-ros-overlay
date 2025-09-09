
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, nlohmann-json-schema-validator-vendor, nlohmann_json, rmf-api-msgs, rmf-task }:
buildRosPackage {
  pname = "ros-kilted-rmf-task-sequence";
  version = "2.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/kilted/rmf_task_sequence/2.7.0-2.tar.gz";
    name = "2.7.0-2.tar.gz";
    sha256 = "6b0a916b8a30566f76c0b8300f7e8cfb2a313eb5e0b15171cdc82b2c679701bd";
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
