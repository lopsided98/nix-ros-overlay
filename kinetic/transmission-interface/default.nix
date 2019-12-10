
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, hardware-interface, pluginlib, resource-retriever, roscpp, rosunit, tinyxml }:
buildRosPackage {
  pname = "ros-kinetic-transmission-interface";
  version = "0.13.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/transmission_interface/0.13.3-0.tar.gz";
    name = "0.13.3-0.tar.gz";
    sha256 = "5ea69c02ba27cce7d5bb727821595ff1eacfeda4febdb5a56ed243d779dd825d";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules hardware-interface ];
  checkInputs = [ resource-retriever rosunit ];
  propagatedBuildInputs = [ pluginlib roscpp tinyxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Transmission Interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
