
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, resource-retriever, pluginlib, hardware-interface, cmake-modules, catkin, tinyxml, rosunit, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-transmission-interface";
  version = "0.13.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/transmission_interface/0.13.3-0.tar.gz";
    name = "0.13.3-0.tar.gz";
    sha256 = "5ea69c02ba27cce7d5bb727821595ff1eacfeda4febdb5a56ed243d779dd825d";
  };

  buildType = "catkin";
  buildInputs = [ hardware-interface pluginlib cmake-modules tinyxml roscpp ];
  checkInputs = [ resource-retriever rosunit ];
  propagatedBuildInputs = [ pluginlib tinyxml roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Transmission Interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
