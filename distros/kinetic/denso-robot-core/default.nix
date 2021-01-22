
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, bcap-core, bcap-service, catkin, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-denso-robot-core";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/kinetic/denso_robot_core/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "512e9f991a1ba21d338bd4fead0f5040dca3eccee3099d6468065baabfada67f";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs bcap-core bcap-service message-runtime roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot core package includes a node for controlling DENSO robot controllers.'';
    license = with lib.licenses; [ mit ];
  };
}
