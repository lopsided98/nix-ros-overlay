
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, pluginlib, cmake-modules, catkin, tinyxml, resource-retriever, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-transmission-interface";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/transmission_interface/0.13.3-0.tar.gz;
    sha256 = "5ea69c02ba27cce7d5bb727821595ff1eacfeda4febdb5a56ed243d779dd825d";
  };

  checkInputs = [ rosunit resource-retriever ];
  propagatedBuildInputs = [ tinyxml roscpp pluginlib ];
  nativeBuildInputs = [ hardware-interface cmake-modules pluginlib catkin roscpp tinyxml ];

  meta = {
    description = ''Transmission Interface.'';
    #license = lib.licenses.BSD;
  };
}
