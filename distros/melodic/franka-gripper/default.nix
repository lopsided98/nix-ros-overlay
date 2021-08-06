
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, control-msgs, libfranka, message-generation, message-runtime, roscpp, sensor-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-franka-gripper";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_gripper/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "a9e109dc85ed5886534c0696892a29572b8c6eae07225297ce97105b7f5708ac";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs control-msgs libfranka message-generation message-runtime roscpp sensor-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package implements the franka gripper of type Franka Hand for the use in ros'';
    license = with lib.licenses; [ asl20 ];
  };
}
