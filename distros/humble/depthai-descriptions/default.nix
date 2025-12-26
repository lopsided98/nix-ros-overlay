
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, ros-environment, xacro }:
buildRosPackage {
  pname = "ros-humble-depthai-descriptions";
  version = "2.12.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/humble/depthai_descriptions/2.12.1-1.tar.gz";
    name = "2.12.1-1.tar.gz";
    sha256 = "8e3298069f44dbb1cb939ea4da73f65c36e826bec802ad1a1f6a0c26afbfef0a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The depthai_descriptions package";
    license = with lib.licenses; [ mit ];
  };
}
