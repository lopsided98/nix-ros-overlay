
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, controller-manager, controller-manager-msgs, diagnostic-msgs, diagnostic-updater, hardware-interface, joint-state-controller, joint-trajectory-controller, moveit-ros-planning-interface, play-motion-msgs, position-controllers, robot-state-publisher, roscpp, rostest, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-play-motion";
  version = "0.4.8-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/play_motion-release2/archive/release/melodic/play_motion/0.4.8-1.tar.gz";
    name = "0.4.8-1.tar.gz";
    sha256 = "bc3bb1a2030e2aa9213c26556c1fd012399c58cdc5f1dc592ec4b1786c8267aa";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ controller-manager hardware-interface joint-state-controller joint-trajectory-controller position-controllers robot-state-publisher rostest xacro ];
  propagatedBuildInputs = [ actionlib control-msgs controller-manager-msgs diagnostic-msgs diagnostic-updater moveit-ros-planning-interface play-motion-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plays a pre-recorded motion on a robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
