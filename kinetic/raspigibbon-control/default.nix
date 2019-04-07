
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, joint-state-controller, control-msgs, sensor-msgs, catkin, controller-interface, robot-state-publisher, rospy, std-msgs, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-raspigibbon-control";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/raspberrypigibbon/raspigibbon_sim-release/archive/release/kinetic/raspigibbon_control/0.0.1-0.tar.gz;
    sha256 = "36bc3da52cdc538b0e3bebacad479a2bf8718d415b69668a20ea49d30af7e8c6";
  };

  buildInputs = [ controller-manager hardware-interface joint-state-controller control-msgs sensor-msgs controller-interface robot-state-publisher rospy std-msgs gazebo-ros-control ];
  propagatedBuildInputs = [ controller-manager hardware-interface joint-state-controller control-msgs sensor-msgs controller-interface robot-state-publisher rospy std-msgs gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The raspigibbon_control package'';
    #license = lib.licenses.MIT;
  };
}
