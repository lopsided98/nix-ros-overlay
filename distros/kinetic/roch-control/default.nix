
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, create-node, diff-drive-controller, geometry-msgs, interactive-marker-twist-server, joint-state-controller, joint-trajectory-controller, joy, robot-localization, roscpp, roslaunch, rostopic, teleop-twist-joy, twist-mux }:
buildRosPackage {
  pname = "ros-kinetic-roch-control";
  version = "2.0.15";

  src = fetchurl {
    url = "https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_control/2.0.15-0.tar.gz";
    name = "2.0.15-0.tar.gz";
    sha256 = "00a6df72881a5a49c657a2990a1c148efec2b755919c5897f471e6d41ed3d55a";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager create-node diff-drive-controller geometry-msgs interactive-marker-twist-server joint-state-controller joint-trajectory-controller joy robot-localization roscpp rostopic teleop-twist-joy twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SawYer roch controller configurations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
