
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, twist-mux, joint-state-controller, diff-drive-controller, joy, catkin, joint-trajectory-controller, husky-description, robot-localization, multimaster-launch, robot-state-publisher, interactive-marker-twist-server, teleop-twist-joy, rostopic, roslaunch }:
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
  propagatedBuildInputs = [ controller-manager twist-mux joint-state-controller interactive-marker-twist-server diff-drive-controller joy joint-trajectory-controller husky-description robot-localization multimaster-launch robot-state-publisher teleop-twist-joy rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky controller configurations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
