
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, controller-manager, controller-manager-msgs, diagnostic-msgs, diagnostic-updater, hardware-interface, joint-state-controller, joint-trajectory-controller, moveit-ros-planning-interface, play-motion-msgs, position-controllers, robot-state-publisher, roscpp, rostest, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-kinetic-play-motion";
  version = "0.4.5";

  src = fetchurl {
    url = "https://github.com/pal-gbp/play_motion-release2/archive/release/kinetic/play_motion/0.4.5-0.tar.gz";
    name = "0.4.5-0.tar.gz";
    sha256 = "a44960f689d3696104db4b6260c86aa40cb9107abd7363557973bef8ee96571b";
  };

  buildType = "catkin";
  checkInputs = [ controller-manager hardware-interface joint-state-controller joint-trajectory-controller position-controllers robot-state-publisher rostest xacro ];
  propagatedBuildInputs = [ actionlib control-msgs controller-manager-msgs diagnostic-msgs diagnostic-updater moveit-ros-planning-interface play-motion-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plays a pre-recorded motion on a robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
