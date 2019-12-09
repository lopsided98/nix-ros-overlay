
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy, teleop-twist-joy, controller-manager, twist-mux, catkin, rostopic, robot-localization, diff-drive-controller, joint-trajectory-controller, roslaunch, joint-state-controller }:
buildRosPackage {
  pname = "ros-kinetic-jaguar-control";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/gstavrinos/jaguar-release/archive/release/kinetic/jaguar_control/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "cd8f8e78719d5963b7f4518b9c5f5beaf5477f981e1a48657189b1e3314f8881";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ joy teleop-twist-joy controller-manager twist-mux rostopic robot-localization diff-drive-controller joint-trajectory-controller joint-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''DrRobot's Jaguar 4X4 controller configurations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
