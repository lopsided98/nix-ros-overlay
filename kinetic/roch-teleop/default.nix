
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, twist-mux, joint-state-controller, diff-drive-controller, joy, catkin, joint-trajectory-controller, robot-localization, rostopic, teleop-twist-joy, interactive-marker-twist-server, yocs-cmd-vel-mux, roslaunch, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-roch-teleop";
  version = "2.0.12";

  src = fetchurl {
    url = https://github.com/SawYerRobotics-release/roch-release/archive/release/kinetic/roch_teleop/2.0.12-0.tar.gz;
    sha256 = "7058edefd5cfe296cfe9e21df4f1748b1d9cecba0e847a01ae6ecb73a6dfae05";
  };

  propagatedBuildInputs = [ controller-manager twist-mux joint-state-controller diff-drive-controller joy joint-trajectory-controller robot-localization rostopic teleop-twist-joy interactive-marker-twist-server yocs-cmd-vel-mux roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin joy roslaunch roscpp geometry-msgs ];

  meta = {
    description = ''SawYer roch controller configurations'';
    #license = lib.licenses.BSD;
  };
}
