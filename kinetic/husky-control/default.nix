
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy, husky-description, teleop-twist-joy, controller-manager, robot-state-publisher, twist-mux, catkin, rostopic, interactive-marker-twist-server, multimaster-launch, robot-localization, diff-drive-controller, joint-trajectory-controller, roslaunch, joint-state-controller }:
buildRosPackage {
  pname = "ros-kinetic-husky-control";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_control/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "38eef226c2340adc186d0ab750127260b3ce3b472aedfc515fe6e47f83923bbd";
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
