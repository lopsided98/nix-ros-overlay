
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, geometry-msgs, interactive-marker-twist-server, joint-state-controller, joint-trajectory-controller, joy, robot-localization, roscpp, roslaunch, rostopic, teleop-twist-joy, twist-mux, yocs-cmd-vel-mux }:
buildRosPackage {
  pname = "ros-kinetic-roch-teleop";
  version = "2.0.12";

  src = fetchurl {
    url = "https://github.com/SawYerRobotics-release/roch-release/archive/release/kinetic/roch_teleop/2.0.12-0.tar.gz";
    name = "2.0.12-0.tar.gz";
    sha256 = "7058edefd5cfe296cfe9e21df4f1748b1d9cecba0e847a01ae6ecb73a6dfae05";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller geometry-msgs interactive-marker-twist-server joint-state-controller joint-trajectory-controller joy robot-localization roscpp rostopic teleop-twist-joy twist-mux yocs-cmd-vel-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SawYer roch controller configurations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
