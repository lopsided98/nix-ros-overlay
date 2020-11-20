
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rsm-additions, rsm-core, rsm-msgs, rsm-rqt-plugins, rsm-rviz-plugins }:
buildRosPackage {
  pname = "ros-melodic-robot-statemachine";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/melodic/robot_statemachine/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "ebddbe2287aded77a9ba2763f2b0c29fd8a330beb2d0f1718d2ee229a43e2848";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rsm-additions rsm-core rsm-msgs rsm-rqt-plugins rsm-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_statemachine package bundles all functionalities and the GUI'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
