
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-mpc-local-planner-msgs";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/mpc_local_planner-release/archive/release/noetic/mpc_local_planner_msgs/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "bf44761253edd16b87eaa7f092b82e3d36f95998b681cd8df831746804ed8033";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides message types that are used by the package mpc_local_planner'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
