
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, husky-description, interactive-marker-twist-server, joint-state-controller, joint-trajectory-controller, joy, robot-localization, robot-state-publisher, roslaunch, rostopic, teleop-twist-joy, teleop-twist-keyboard, twist-mux }:
buildRosPackage {
  pname = "ros-noetic-husky-control";
  version = "0.6.6-r3";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/noetic/husky_control/0.6.6-3.tar.gz";
    name = "0.6.6-3.tar.gz";
    sha256 = "a702d21feabfa818cb1dbe676d8316f1b1b546ae94803ca2cc4cf2aa10c6061e";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller husky-description interactive-marker-twist-server joint-state-controller joint-trajectory-controller joy robot-localization robot-state-publisher rostopic teleop-twist-joy teleop-twist-keyboard twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky controller configurations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
