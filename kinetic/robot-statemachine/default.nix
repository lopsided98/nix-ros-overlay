
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rsm-additions, rsm-msgs, catkin, rsm-core, rsm-rqt-plugins, rsm-rviz-plugins }:
buildRosPackage {
  pname = "ros-kinetic-robot-statemachine";
  version = "1.1.2-r1";

  src = fetchurl {
    url = https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/kinetic/robot_statemachine/1.1.2-1.tar.gz;
    sha256 = "2daf90a8a530858303c5de8fd15d2a7ae2edcd335b1deee35326747dcf4af142";
  };

  propagatedBuildInputs = [ rsm-additions rsm-msgs rsm-core rsm-rqt-plugins rsm-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_statemachine package bundles all functionalities and the GUI'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
