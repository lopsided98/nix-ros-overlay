
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-humble-depthai-descriptions-v3";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-v3-release/archive/release/humble/depthai_descriptions_v3/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "2251035d632cd4b4c7b0cbefd9037c2200ad27c6b48002ca60d3ad0ff4fae72e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The depthai_descriptions_v3 package";
    license = with lib.licenses; [ mit ];
  };
}
