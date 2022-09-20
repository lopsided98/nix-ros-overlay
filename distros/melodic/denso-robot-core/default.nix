
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, bcap-core, bcap-service, catkin, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-core";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/denso_robot_core/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "c2823db29c7191e68ed73cd9e44f134dd0bed78fcbe2e5f0ad5a47ded3292b1d";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs bcap-core bcap-service message-runtime roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot core package includes a node for controlling DENSO robot controllers.'';
    license = with lib.licenses; [ mit ];
  };
}
