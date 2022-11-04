
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cob-generic-can, filters, force-torque-sensor, gazebo-ros, geometry-msgs, hardware-interface, iirob-filters, libmodbus, message-generation, message-runtime, pluginlib, realtime-tools, robot-state-publisher, roscpp, roslaunch, rosparam-handler, rospy, rostopic, std-msgs, std-srvs, teleop-twist-joy, tf2, tf2-geometry-msgs, tf2-ros, trajectory-msgs, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-ati-force-torque";
  version = "1.1.1-r3";

  src = fetchurl {
    url = "https://github.com/KITrobotics/ati_force_torque-release/archive/release/melodic/ati_force_torque/1.1.1-3.tar.gz";
    name = "1.1.1-3.tar.gz";
    sha256 = "ab56ef07e73679565c0e42290e449c0c3fd2531b8c77eb99e290c8b88c65717d";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules message-generation ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ cob-generic-can filters force-torque-sensor gazebo-ros geometry-msgs hardware-interface iirob-filters libmodbus message-runtime pluginlib realtime-tools robot-state-publisher roscpp roslaunch rosparam-handler rospy rostopic std-msgs std-srvs teleop-twist-joy tf2 tf2-geometry-msgs tf2-ros trajectory-msgs visualization-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package implements driver for ATI force torque sensors up to firmware 3.x. Char and Net CAN devices are supported through cob_generic_can package. The code if based on cob_forcetorque package.'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
