
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, twist-mux, joint-state-controller, diff-drive-controller, joy, catkin, joint-trajectory-controller, husky-description, robot-localization, multimaster-launch, robot-state-publisher, interactive-marker-twist-server, teleop-twist-joy, rostopic, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-husky-control";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_control/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "7eb61be9b4b8876ca17bcc6a45846d47a5145e9f36598087c769a821c3829119";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager twist-mux joint-state-controller interactive-marker-twist-server diff-drive-controller joy joint-trajectory-controller husky-description robot-localization multimaster-launch robot-state-publisher teleop-twist-joy rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky controller configurations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
