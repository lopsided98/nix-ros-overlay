
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy, husky-description, teleop-twist-joy, controller-manager, robot-state-publisher, twist-mux, catkin, rostopic, interactive-marker-twist-server, multimaster-launch, robot-localization, diff-drive-controller, joint-trajectory-controller, roslaunch, joint-state-controller }:
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
  propagatedBuildInputs = [ joy husky-description teleop-twist-joy controller-manager robot-state-publisher twist-mux rostopic interactive-marker-twist-server multimaster-launch robot-localization diff-drive-controller joint-trajectory-controller joint-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky controller configurations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
