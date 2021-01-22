
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rsm-additions, rsm-core, rsm-msgs, rsm-rqt-plugins, rsm-rviz-plugins }:
buildRosPackage {
  pname = "ros-kinetic-robot-statemachine";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/kinetic/robot_statemachine/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "0d3801873d3b60cb7ff7533410287b3b0427ba244c9f1f0d2b09805ec4e185f1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rsm-additions rsm-core rsm-msgs rsm-rqt-plugins rsm-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_statemachine package bundles all functionalities and the GUI'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
