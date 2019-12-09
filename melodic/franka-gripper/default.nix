
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, libfranka, actionlib, catkin, actionlib-msgs, roscpp, message-runtime, xmlrpcpp, control-msgs }:
buildRosPackage {
  pname = "ros-melodic-franka-gripper";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_gripper/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "ffa8aa860f953517851d9db0e6d0bdf5e87f26cf6d6a017fc5c13d10cff9b448";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs libfranka actionlib actionlib-msgs roscpp message-generation xmlrpcpp control-msgs ];
  propagatedBuildInputs = [ sensor-msgs libfranka message-runtime actionlib actionlib-msgs roscpp message-generation xmlrpcpp control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package implements the franka gripper of type Franka Hand for the use in ros'';
    license = with lib.licenses; [ asl20 ];
  };
}
