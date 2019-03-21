
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gmapping, map-server, amcl, catkin, move-base, robot-pose-ekf, rviz, message-runtime, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-rb1-base-2dnav";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/RobotnikAutomation/rb1_base_sim-release/archive/release/kinetic/rb1_base_2dnav/1.0.2-0.tar.gz;
    sha256 = "1fdaf6fd6270eeb53e261d1c45a17c3c16f6fc2897537606cc5ec059de79833b";
  };

  propagatedBuildInputs = [ gmapping map-server amcl move-base robot-pose-ekf rviz message-runtime std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package configures the move_base stack and makes use of the gmapping and amcl algorithms to
    move the rb1_base robot'';
    #license = lib.licenses.BSD;
  };
}
