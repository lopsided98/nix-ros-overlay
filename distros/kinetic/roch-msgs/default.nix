
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-roch-msgs";
  version = "2.0.15";

  src = fetchurl {
    url = "https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_msgs/2.0.15-0.tar.gz";
    name = "2.0.15-0.tar.gz";
    sha256 = "1a0a22982e97d7420ccff601e07108efc51183525e01b34b6a69a6957b39b979";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages, serivices and actions for SawYer roch'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
