
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, actionlib-msgs, sensor-msgs, catkin, message-generation, message-runtime, xmlrpcpp, actionlib, libfranka, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-franka-gripper";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/kinetic/franka_gripper/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "5a59e493975969f8c78eee2d6458c613bf3bec4006edf8b1cd1c3262df992610";
  };

  buildType = "catkin";
  buildInputs = [ actionlib-msgs control-msgs sensor-msgs message-generation xmlrpcpp actionlib libfranka roscpp ];
  propagatedBuildInputs = [ actionlib-msgs control-msgs sensor-msgs message-generation message-runtime xmlrpcpp actionlib libfranka roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package implements the franka gripper of type Franka Hand for the use in ros'';
    license = with lib.licenses; [ asl20 ];
  };
}
