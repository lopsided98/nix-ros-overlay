
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, arbotix-controllers, arbotix-python, catkin, control-msgs, pincher-arm-description, robot-state-publisher, rospy, sensor-msgs, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-pincher-arm-bringup";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/pincher_arm-release/archive/release/noetic/pincher_arm_bringup/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "768ab57d8a042f3f7a9b191982261aab787ebe7ff8cb5c30166e11a71aefd103";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib arbotix-controllers arbotix-python control-msgs pincher-arm-description robot-state-publisher rospy sensor-msgs std-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files for starting PhantomX Pincher arm drivers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
