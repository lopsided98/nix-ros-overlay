
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, xacro, diagnostic-msgs, controller-manager, controller-manager-msgs, moveit-ros-planning-interface, robot-state-publisher, hardware-interface, catkin, position-controllers, actionlib, play-motion-msgs, joint-trajectory-controller, roscpp, diagnostic-updater, rostest, joint-state-controller, control-msgs }:
buildRosPackage {
  pname = "ros-kinetic-play-motion";
  version = "0.4.5";

  src = fetchurl {
    url = "https://github.com/pal-gbp/play_motion-release2/archive/release/kinetic/play_motion/0.4.5-0.tar.gz";
    name = "0.4.5-0.tar.gz";
    sha256 = "a44960f689d3696104db4b6260c86aa40cb9107abd7363557973bef8ee96571b";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs diagnostic-msgs controller-manager-msgs moveit-ros-planning-interface actionlib play-motion-msgs control-msgs roscpp diagnostic-updater ];
  checkInputs = [ rostest xacro controller-manager robot-state-publisher hardware-interface position-controllers joint-trajectory-controller joint-state-controller ];
  propagatedBuildInputs = [ sensor-msgs diagnostic-msgs controller-manager-msgs moveit-ros-planning-interface actionlib play-motion-msgs control-msgs roscpp diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plays a pre-recorded motion on a robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
