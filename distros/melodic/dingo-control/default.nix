
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, interactive-marker-twist-server, joint-state-controller, joy, ridgeback-control, robot-localization, roslaunch, teleop-twist-joy, topic-tools, twist-mux }:
buildRosPackage {
  pname = "ros-melodic-dingo-control";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo-release/archive/release/melodic/dingo_control/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "42da85876c5670d83380035aeeb209f61dafdd55d2f92639fd0290304e6ef8d3";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller interactive-marker-twist-server joint-state-controller joy ridgeback-control robot-localization teleop-twist-joy topic-tools twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers for Dingo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
