
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, nlohmann-json-schema-validator-vendor, nlohmann_json, rmf-api-msgs, rmf-task }:
buildRosPackage {
  pname = "ros-jazzy-rmf-task-sequence";
  version = "2.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/jazzy/rmf_task_sequence/2.4.0-3.tar.gz";
    name = "2.4.0-3.tar.gz";
    sha256 = "3076bac58d0e2bdcdce045d34ff48f002eb35d22f580dacaadd319f269140b22";
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
