
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, controller-interface, controller-manager, gazebo-ros-control, hardware-interface, joint-state-controller, robot-state-publisher, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-raspigibbon-control";
  version = "0.0.1";

  src = fetchurl {
    url = "https://github.com/raspberrypigibbon/raspigibbon_sim-release/archive/release/kinetic/raspigibbon_control/0.0.1-0.tar.gz";
    name = "0.0.1-0.tar.gz";
    sha256 = "36bc3da52cdc538b0e3bebacad479a2bf8718d415b69668a20ea49d30af7e8c6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ control-msgs controller-interface controller-manager gazebo-ros-control hardware-interface joint-state-controller robot-state-publisher rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The raspigibbon_control package'';
    license = with lib.licenses; [ mit ];
  };
}
