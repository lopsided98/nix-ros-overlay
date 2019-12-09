
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, controller-interface, controller-manager, robot-state-publisher, std-msgs, hardware-interface, catkin, gazebo-ros-control, rospy, joint-state-controller, control-msgs }:
buildRosPackage {
  pname = "ros-kinetic-raspigibbon-control";
  version = "0.0.1";

  src = fetchurl {
    url = "https://github.com/raspberrypigibbon/raspigibbon_sim-release/archive/release/kinetic/raspigibbon_control/0.0.1-0.tar.gz";
    name = "0.0.1-0.tar.gz";
    sha256 = "36bc3da52cdc538b0e3bebacad479a2bf8718d415b69668a20ea49d30af7e8c6";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs controller-interface controller-manager robot-state-publisher hardware-interface std-msgs gazebo-ros-control rospy joint-state-controller control-msgs ];
  propagatedBuildInputs = [ sensor-msgs controller-interface controller-manager robot-state-publisher std-msgs hardware-interface gazebo-ros-control rospy joint-state-controller control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The raspigibbon_control package'';
    license = with lib.licenses; [ mit ];
  };
}
