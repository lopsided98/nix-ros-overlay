
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-noetic-depthai-descriptions";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_descriptions/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "79fd9fc2ef70a1736e6324eac3ef8218fe232a7b5afd09fc8b9d89d40afe3a30";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The depthai_descriptions package'';
    license = with lib.licenses; [ mit ];
  };
}
