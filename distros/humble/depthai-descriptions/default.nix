
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-humble-depthai-descriptions";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/humble/depthai_descriptions/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "de649910d1aeaa86501a0142d4441ec37f4b0443a57f81335450056eea8a1b67";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The depthai_descriptions package";
    license = with lib.licenses; [ mit ];
  };
}
