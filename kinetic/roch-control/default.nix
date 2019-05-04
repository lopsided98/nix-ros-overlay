
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, twist-mux, joint-state-controller, diff-drive-controller, create-node, joy, catkin, joint-trajectory-controller, robot-localization, rostopic, teleop-twist-joy, interactive-marker-twist-server, roslaunch, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-roch-control";
  version = "2.0.15";

  src = fetchurl {
    url = https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_control/2.0.15-0.tar.gz;
    sha256 = "00a6df72881a5a49c657a2990a1c148efec2b755919c5897f471e6d41ed3d55a";
  };

  buildInputs = [ roslaunch roscpp joy geometry-msgs ];
  propagatedBuildInputs = [ controller-manager twist-mux joint-state-controller diff-drive-controller create-node joy joint-trajectory-controller robot-localization rostopic teleop-twist-joy interactive-marker-twist-server roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SawYer roch controller configurations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
