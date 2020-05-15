
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, hardware-interface, pluginlib, resource-retriever, roscpp, tinyxml }:
buildRosPackage {
  pname = "ros-melodic-transmission-interface";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/transmission_interface/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "c2b08fefbb6e05f830ecc8a4011db38ae1053da6ef47979b8734ce87e0a3c0eb";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  checkInputs = [ resource-retriever ];
  propagatedBuildInputs = [ hardware-interface pluginlib roscpp tinyxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Transmission Interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
