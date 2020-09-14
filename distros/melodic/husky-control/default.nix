
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, husky-description, interactive-marker-twist-server, joint-state-controller, joint-trajectory-controller, joy, multimaster-launch, robot-localization, robot-state-publisher, roslaunch, rostopic, teleop-twist-joy, twist-mux }:
buildRosPackage {
  pname = "ros-melodic-husky-control";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_control/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "96dad945b4d78b1bfd88085d6ea068cfca97164117db8ccf9fae07d0b001f97d";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller husky-description interactive-marker-twist-server joint-state-controller joint-trajectory-controller joy multimaster-launch robot-localization robot-state-publisher rostopic teleop-twist-joy twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky controller configurations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
