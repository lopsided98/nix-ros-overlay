
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, catkin, diagnostic-msgs, diagnostic-updater, geometry-msgs, nav-msgs, robotnik-msgs, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-rbcar-robot-control";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/rbcar_sim-release/archive/release/kinetic/rbcar_robot_control/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "cde4c04a409cb516dc98db02a20f54c8e72222aa28cdf82511125c4757f5cfaa";
  };

  buildType = "catkin";
  buildInputs = [ diagnostic-msgs diagnostic-updater ];
  propagatedBuildInputs = [ ackermann-msgs geometry-msgs nav-msgs robotnik-msgs roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rbcar_robot_control package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
