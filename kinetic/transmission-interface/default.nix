
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, hardware-interface, pluginlib, resource-retriever, roscpp, rosunit, tinyxml }:
buildRosPackage {
  pname = "ros-kinetic-transmission-interface";
  version = "0.13.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/transmission_interface/0.13.4-1.tar.gz";
    name = "0.13.4-1.tar.gz";
    sha256 = "9239320500fa34cf57b3e8319af7b10c31245272c7a8ce388bec031e7c1c0039";
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
