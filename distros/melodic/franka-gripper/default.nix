
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, control-msgs, libfranka, message-generation, message-runtime, roscpp, sensor-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-franka-gripper";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_gripper/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "44fbcb55b400f1f358660d1ddc0e36ab7bada81561e0d825ba98de11cb8e04df";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs control-msgs libfranka message-generation message-runtime roscpp sensor-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package implements the franka gripper of type Franka Hand for the use in ros'';
    license = with lib.licenses; [ asl20 ];
  };
}
