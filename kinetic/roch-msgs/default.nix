
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, actionlib-msgs, sensor-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-roch-msgs";
  version = "2.0.15";

  src = fetchurl {
    url = https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_msgs/2.0.15-0.tar.gz;
    sha256 = "1a0a22982e97d7420ccff601e07108efc51183525e01b34b6a69a6957b39b979";
  };

  buildInputs = [ std-srvs message-generation actionlib-msgs std-msgs sensor-msgs ];
  propagatedBuildInputs = [ std-srvs message-runtime actionlib-msgs std-msgs sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages, serivices and actions for SawYer roch'';
    #license = lib.licenses.BSD;
  };
}
