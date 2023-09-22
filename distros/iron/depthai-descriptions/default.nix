
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-iron-depthai-descriptions";
  version = "2.8.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/iron/depthai_descriptions/2.8.1-1.tar.gz";
    name = "2.8.1-1.tar.gz";
    sha256 = "e66b1b47967e5cd3b3435f15290b177223156f8cab6de0b5dbc23e6d49a47a31";
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
