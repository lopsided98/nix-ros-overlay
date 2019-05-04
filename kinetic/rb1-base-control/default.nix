
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, twist-mux, joint-state-controller, diff-drive-controller, catkin, controller-manager-msgs, robot-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-rb1-base-control";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/RobotnikAutomation/rb1_base_sim-release/archive/release/kinetic/rb1_base_control/1.0.2-0.tar.gz;
    sha256 = "01ebea3b6c6e19181d58e687f0e0d342abf47fcfc2719337fa944da1e35eea30";
  };

  propagatedBuildInputs = [ controller-manager twist-mux joint-state-controller diff-drive-controller controller-manager-msgs robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rb1_base_control package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
