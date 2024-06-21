
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, nlohmann-json-schema-validator-vendor, nlohmann_json, rmf-api-msgs, rmf-task }:
buildRosPackage {
  pname = "ros-jazzy-rmf-task-sequence";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/jazzy/rmf_task_sequence/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "658fb8b037e6fb691a687a2ac0f793a11612cff91d483016ee864826d95b2b5c";
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
