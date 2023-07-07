
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-humble-depthai-descriptions";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/humble/depthai_descriptions/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "e267f01c35e48df9c32a904db6d1487c7979278ef98d42c2882353189a66c6ff";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The depthai_descriptions package'';
    license = with lib.licenses; [ mit ];
  };
}
