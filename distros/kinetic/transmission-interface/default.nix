
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, hardware-interface, pluginlib, resource-retriever, roscpp, rosunit, tinyxml }:
buildRosPackage {
  pname = "ros-kinetic-transmission-interface";
  version = "0.13.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/transmission_interface/0.13.5-1.tar.gz";
    name = "0.13.5-1.tar.gz";
    sha256 = "e295f962ca5dbe619937d038170dd10de07f23413fddc089d49243affdede803";
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
