
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, control-msgs, industrial-msgs, industrial-utils, robot-state-publisher, roscpp, roslaunch, rosunit, sensor-msgs, simple-message, std-msgs, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-melodic-industrial-robot-client";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/melodic/industrial_robot_client/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "8066fb7a6f027f2d06a3b6641d09fbcd7bc858b677090edf941cbc4fca93ed91";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rosunit ];
  propagatedBuildInputs = [ actionlib actionlib-msgs control-msgs industrial-msgs industrial-utils robot-state-publisher roscpp sensor-msgs simple-message std-msgs trajectory-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''industrial robot client contains generic clients for connecting 
     to industrial robot controllers with servers that adhere to the
     simple message protocol.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
