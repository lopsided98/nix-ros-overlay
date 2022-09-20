
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-robot-one";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/AlexanderSilvaB/robot-one-ros-release/archive/release/melodic/robot_one/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "8577070c2981b950d02c6e8353edea64dc1724952a8981d82d980a7de21109d4";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package allows to use the Robot One Framework with ROS. The supported features of the framework includes the simulator and connection with the physical robots'';
    license = with lib.licenses; [ mit ];
  };
}
