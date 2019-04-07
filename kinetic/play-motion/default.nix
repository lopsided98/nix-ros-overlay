
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, joint-state-controller, control-msgs, play-motion-msgs, catkin, sensor-msgs, joint-trajectory-controller, diagnostic-updater, rostest, position-controllers, controller-manager-msgs, robot-state-publisher, actionlib, diagnostic-msgs, roscpp, moveit-ros-planning-interface, xacro }:
buildRosPackage {
  pname = "ros-kinetic-play-motion";
  version = "0.4.5";

  src = fetchurl {
    url = https://github.com/pal-gbp/play_motion-release2/archive/release/kinetic/play_motion/0.4.5-0.tar.gz;
    sha256 = "a44960f689d3696104db4b6260c86aa40cb9107abd7363557973bef8ee96571b";
  };

  buildInputs = [ control-msgs play-motion-msgs sensor-msgs diagnostic-updater controller-manager-msgs actionlib diagnostic-msgs roscpp moveit-ros-planning-interface ];
  checkInputs = [ controller-manager rostest position-controllers joint-state-controller hardware-interface robot-state-publisher xacro joint-trajectory-controller ];
  propagatedBuildInputs = [ control-msgs play-motion-msgs sensor-msgs diagnostic-updater controller-manager-msgs actionlib diagnostic-msgs roscpp moveit-ros-planning-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plays a pre-recorded motion on a robot'';
    #license = lib.licenses.BSD;
  };
}
