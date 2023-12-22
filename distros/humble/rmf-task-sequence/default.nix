
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, nlohmann-json-schema-validator-vendor, nlohmann_json, rmf-api-msgs, rmf-task }:
buildRosPackage {
  pname = "ros-humble-rmf-task-sequence";
  version = "2.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/humble/rmf_task_sequence/2.1.7-1.tar.gz";
    name = "2.1.7-1.tar.gz";
    sha256 = "c9f8887853613c586ddd7d84d2dfd8500d02c7dcb3a006ced33c99824259da28";
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
