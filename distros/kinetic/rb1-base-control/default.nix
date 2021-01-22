
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, controller-manager-msgs, diff-drive-controller, joint-state-controller, robot-state-publisher, twist-mux }:
buildRosPackage {
  pname = "ros-kinetic-rb1-base-control";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/rb1_base_sim-release/archive/release/kinetic/rb1_base_control/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "01ebea3b6c6e19181d58e687f0e0d342abf47fcfc2719337fa944da1e35eea30";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager controller-manager-msgs diff-drive-controller joint-state-controller robot-state-publisher twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rb1_base_control package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
