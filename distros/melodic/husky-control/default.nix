
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, husky-description, interactive-marker-twist-server, joint-state-controller, joint-trajectory-controller, joy, multimaster-launch, robot-localization, robot-state-publisher, roslaunch, rostopic, teleop-twist-joy, twist-mux }:
buildRosPackage {
  pname = "ros-melodic-husky-control";
  version = "0.4.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_control/0.4.7-1.tar.gz";
    name = "0.4.7-1.tar.gz";
    sha256 = "789bbf2356bf61718f3f64f89e44a78f76ed1c8303fc0512bbbd58a0afd9ca6e";
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
