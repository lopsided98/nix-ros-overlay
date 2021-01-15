
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cob-generic-can, filters, force-torque-sensor, gazebo-ros, geometry-msgs, hardware-interface, iirob-filters, libmodbus, message-generation, message-runtime, pluginlib, realtime-tools, robot-state-publisher, roscpp, roslaunch, rosparam-handler, rospy, rostopic, std-msgs, std-srvs, teleop-twist-joy, tf2, tf2-geometry-msgs, tf2-ros, trajectory-msgs, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-kinetic-ati-force-torque";
  version = "1.1.1-r4";

  src = fetchurl {
    url = "https://github.com/KITrobotics/ati_force_torque-release/archive/release/kinetic/ati_force_torque/1.1.1-4.tar.gz";
    name = "1.1.1-4.tar.gz";
    sha256 = "1b75bf5281848b505c0edb1ca751aaf9a657e638ed0c5a5608e278379af875fc";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-generation ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ cob-generic-can filters force-torque-sensor gazebo-ros geometry-msgs hardware-interface iirob-filters libmodbus message-runtime pluginlib realtime-tools robot-state-publisher roscpp roslaunch rosparam-handler rospy rostopic std-msgs std-srvs teleop-twist-joy tf2 tf2-geometry-msgs tf2-ros trajectory-msgs visualization-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package implements driver for ATI force torque sensors up to firmware 3.x. Char and Net CAN devices are supported through cob_generic_can package. The code if based on cob_forcetorque package.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
