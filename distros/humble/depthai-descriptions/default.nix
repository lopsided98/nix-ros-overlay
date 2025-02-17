
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-humble-depthai-descriptions";
  version = "2.10.5-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/humble/depthai_descriptions/2.10.5-1.tar.gz";
    name = "2.10.5-1.tar.gz";
    sha256 = "0b9ae9919d782678293c0eeb6e3446de87a8691849dc426c4ef7aeb042e3e11a";
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
