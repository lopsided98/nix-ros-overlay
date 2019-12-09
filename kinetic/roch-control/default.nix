
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy, teleop-twist-joy, create-node, geometry-msgs, controller-manager, twist-mux, catkin, rostopic, interactive-marker-twist-server, robot-localization, diff-drive-controller, roscpp, joint-trajectory-controller, roslaunch, joint-state-controller }:
buildRosPackage {
  pname = "ros-kinetic-roch-control";
  version = "2.0.15";

  src = fetchurl {
    url = "https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_control/2.0.15-0.tar.gz";
    name = "2.0.15-0.tar.gz";
    sha256 = "00a6df72881a5a49c657a2990a1c148efec2b755919c5897f471e6d41ed3d55a";
  };

  buildType = "catkin";
  buildInputs = [ joy roslaunch geometry-msgs roscpp ];
  propagatedBuildInputs = [ joy teleop-twist-joy geometry-msgs create-node controller-manager twist-mux rostopic interactive-marker-twist-server robot-localization diff-drive-controller roscpp joint-trajectory-controller joint-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SawYer roch controller configurations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
