
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, bcap-core, actionlib, std-msgs, bcap-service, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-denso-robot-core";
  version = "3.0.2-r1";

  src = fetchurl {
    url = https://github.com/DENSORobot/denso_robot_ros-release/archive/release/kinetic/denso_robot_core/3.0.2-1.tar.gz;
    sha256 = "512e9f991a1ba21d338bd4fead0f5040dca3eccee3099d6468065baabfada67f";
  };

  buildInputs = [ actionlib-msgs message-generation bcap-core actionlib std-msgs bcap-service roscpp ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime bcap-core actionlib std-msgs bcap-service roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot core package includes a node for controlling DENSO robot controllers.'';
    license = with lib.licenses; [ mit ];
  };
}
