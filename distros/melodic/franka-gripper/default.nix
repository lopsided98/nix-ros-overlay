
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, control-msgs, libfranka, message-generation, message-runtime, roscpp, sensor-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-franka-gripper";
  version = "0.10.1-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_gripper/0.10.1-1.tar.gz";
    name = "0.10.1-1.tar.gz";
    sha256 = "4b2b55e24afe8ed4bf32f48b18027ea5fab1920c2685495deb0ea2041ecf1d6c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs control-msgs libfranka message-generation message-runtime roscpp sensor-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package implements the franka gripper of type Franka Hand for the use in ros'';
    license = with lib.licenses; [ asl20 ];
  };
}
