
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-jazzy-depthai-descriptions-v3";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-v3-release/archive/release/jazzy/depthai_descriptions_v3/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "a031f70990d2693611e38499a1e13b2ce13d24da5be89db41703758114e375ed";
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
