
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-noetic-depthai-descriptions";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_descriptions/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "2074fba81fc8018daaa44f430bbca7410de2d0ea0465b3f2e192424635ea3ce6";
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
