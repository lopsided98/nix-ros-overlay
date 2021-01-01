
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, control-msgs, libfranka, message-generation, message-runtime, roscpp, sensor-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-franka-gripper";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_gripper/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "592caa47c0c316c63b2cff3cf80be6a9764f6539afb6c5c0c65ecd385b5d278d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs control-msgs libfranka message-generation message-runtime roscpp sensor-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package implements the franka gripper of type Franka Hand for the use in ros'';
    license = with lib.licenses; [ asl20 ];
  };
}
