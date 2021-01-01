
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-msgs, pr2-power-board, roscpp, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-run-stop-auto-restart";
  version = "1.6.30";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_robot-release/archive/release/kinetic/pr2_run_stop_auto_restart/1.6.30-0.tar.gz";
    name = "1.6.30-0.tar.gz";
    sha256 = "251af90686f2c4c5fc4332b6606fe69e5b993226ae9fe50b214c2c4aafe1f4c9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-msgs pr2-power-board roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a node that monitors the state of the run stops of the pr2_robot. When the state of the
   run stop changes from off to on, this node will automatically enable the power to the motors, and reset
   the motors. This allows you to use the run stop as a 'pause' button. By using the run stop as a tool to
   power up the robot, the run stop is also in reach of the user once the robot starts moving.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
