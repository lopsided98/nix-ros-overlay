
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, robotnik-msgs, geometry-msgs, diagnostic-msgs, ackermann-msgs, tf, catkin, roscpp, nav-msgs, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-rbcar-robot-control";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/rbcar_sim-release/archive/release/kinetic/rbcar_robot_control/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "cde4c04a409cb516dc98db02a20f54c8e72222aa28cdf82511125c4757f5cfaa";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs robotnik-msgs diagnostic-msgs geometry-msgs ackermann-msgs tf roscpp nav-msgs diagnostic-updater ];
  propagatedBuildInputs = [ sensor-msgs robotnik-msgs geometry-msgs ackermann-msgs tf roscpp nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rbcar_robot_control package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
