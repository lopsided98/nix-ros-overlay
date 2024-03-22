
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, husky-description, interactive-marker-twist-server, joint-state-controller, joint-trajectory-controller, joy, robot-localization, robot-state-publisher, roslaunch, rostopic, teleop-twist-joy, teleop-twist-keyboard, twist-mux }:
buildRosPackage {
  pname = "ros-noetic-husky-control";
  version = "0.6.10-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/noetic/husky_control/0.6.10-1.tar.gz";
    name = "0.6.10-1.tar.gz";
    sha256 = "445c1dfb9e874677d394a3aba29c5121f5dfb94e90c914800a68c6ca6ce1478e";
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
