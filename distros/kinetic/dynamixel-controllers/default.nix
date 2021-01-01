
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, diagnostic-msgs, dynamixel-driver, dynamixel-msgs, message-generation, rospy, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dynamixel-controllers";
  version = "0.4.1";

  src = fetchurl {
    url = "https://github.com/arebgun/dynamixel_motor-release/archive/release/kinetic/dynamixel_controllers/0.4.1-0.tar.gz";
    name = "0.4.1-0.tar.gz";
    sha256 = "69c2a485f84f360c3b39a6673b83a939b2e10ab8f3808d6ccb9e5dc04e54ab4f";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib control-msgs diagnostic-msgs dynamixel-driver dynamixel-msgs rospy std-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a configurable node, services and a spawner script
        to start, stop and restart one or more controller plugins. Reusable
        controller types are defined for common Dynamixel motor joints. Both speed and
        torque can be set for each joint. This python package can be used by more
        specific robot controllers and all configurable parameters can be loaded
        via a yaml file.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
