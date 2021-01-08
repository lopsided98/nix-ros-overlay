
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, control-msgs, industrial-msgs, industrial-utils, robot-state-publisher, roscpp, rosunit, sensor-msgs, simple-message, std-msgs, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-kinetic-industrial-robot-client";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/kinetic/industrial_robot_client/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "71d327b53681b31e4c73e0a4307de24e174656a474fa04995018cb473db8a1dc";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ actionlib actionlib-msgs control-msgs industrial-msgs industrial-utils robot-state-publisher roscpp sensor-msgs simple-message std-msgs trajectory-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''industrial robot client contains generic clients for connecting 
     to industrial robot controllers with servers that adhere to the
     simple message protocol.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
