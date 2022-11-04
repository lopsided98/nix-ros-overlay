
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rsm-additions, rsm-core, rsm-msgs, rsm-rqt-plugins, rsm-rviz-plugins }:
buildRosPackage {
  pname = "ros-melodic-robot-statemachine";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/melodic/robot_statemachine/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "17b2b75b637ab16cf0594fec59df9717ac924de0813239f204239fe68567ca34";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rsm-additions rsm-core rsm-msgs rsm-rqt-plugins rsm-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_statemachine package bundles all functionalities and the GUI'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
