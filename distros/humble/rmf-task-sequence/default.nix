
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, nlohmann-json-schema-validator-vendor, nlohmann_json, rmf-api-msgs, rmf-task }:
buildRosPackage {
  pname = "ros-humble-rmf-task-sequence";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/humble/rmf_task_sequence/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "15b0696f45af7dbbe0e0e9def11eb0d06efdf592abd3728a24e1a7507b589e90";
  };

  buildType = "cmake";
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ nlohmann-json-schema-validator-vendor nlohmann_json rmf-api-msgs rmf-task ];

  meta = {
    description = ''Implementation of phase-sequence tasks for the Robotics Middleware Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
