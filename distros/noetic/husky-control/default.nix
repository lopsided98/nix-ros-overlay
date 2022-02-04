
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, husky-description, interactive-marker-twist-server, joint-state-controller, joint-trajectory-controller, joy, robot-localization, robot-state-publisher, roslaunch, rostopic, teleop-twist-joy, twist-mux }:
buildRosPackage {
  pname = "ros-noetic-husky-control";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/noetic/husky_control/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "8cfd0f3c160bd304b33cb3c7c476d975ea4161f307270cca7c75f8592a3ce045";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller husky-description interactive-marker-twist-server joint-state-controller joint-trajectory-controller joy robot-localization robot-state-publisher rostopic teleop-twist-joy twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky controller configurations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
