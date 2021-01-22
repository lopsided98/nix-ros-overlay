
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-web-msgs";
  version = "1.0.7";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/web_interface-release/archive/release/kinetic/web_msgs/1.0.7-0.tar.gz";
    name = "1.0.7-0.tar.gz";
    sha256 = "9e932958cb92146fcacd9467012c242d8f31b834fa4d8e8c69339afd5c167b8c";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''web_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
