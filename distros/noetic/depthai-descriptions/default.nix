
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-noetic-depthai-descriptions";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_descriptions/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "e00bd4d5b99b84689e72c5ce53fe82c016e029a9cafcce77f6511384ac6d4f60";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The depthai_descriptions package";
    license = with lib.licenses; [ mit ];
  };
}
