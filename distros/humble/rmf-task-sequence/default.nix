
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, nlohmann-json-schema-validator-vendor, nlohmann_json, rmf-api-msgs, rmf-task }:
buildRosPackage {
  pname = "ros-humble-rmf-task-sequence";
  version = "2.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/humble/rmf_task_sequence/2.1.5-1.tar.gz";
    name = "2.1.5-1.tar.gz";
    sha256 = "1a519e80ea68c495673c704e076c40c28d2a8c4f2fb23b7d6941142aee386f24";
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
