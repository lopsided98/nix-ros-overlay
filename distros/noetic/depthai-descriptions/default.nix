
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-noetic-depthai-descriptions";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_descriptions/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "97472f3f35e10daad0d617edc2ac65cb049c6540a8722ae36bb9b8bc14c53249";
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
