
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy, teleop-twist-joy, geometry-msgs, controller-manager, twist-mux, catkin, rostopic, yocs-cmd-vel-mux, interactive-marker-twist-server, robot-localization, diff-drive-controller, roscpp, joint-trajectory-controller, roslaunch, joint-state-controller }:
buildRosPackage {
  pname = "ros-kinetic-roch-teleop";
  version = "2.0.12";

  src = fetchurl {
    url = "https://github.com/SawYerRobotics-release/roch-release/archive/release/kinetic/roch_teleop/2.0.12-0.tar.gz";
    name = "2.0.12-0.tar.gz";
    sha256 = "7058edefd5cfe296cfe9e21df4f1748b1d9cecba0e847a01ae6ecb73a6dfae05";
  };

  buildType = "catkin";
  buildInputs = [ joy roslaunch geometry-msgs roscpp ];
  propagatedBuildInputs = [ joy teleop-twist-joy geometry-msgs controller-manager twist-mux rostopic yocs-cmd-vel-mux interactive-marker-twist-server robot-localization diff-drive-controller roscpp joint-trajectory-controller joint-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SawYer roch controller configurations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
