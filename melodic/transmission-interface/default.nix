
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, hardware-interface, pluginlib, resource-retriever, roscpp, rosunit, tinyxml }:
buildRosPackage {
  pname = "ros-melodic-transmission-interface";
  version = "0.15.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/transmission_interface/0.15.1-0.tar.gz";
    name = "0.15.1-0.tar.gz";
    sha256 = "6b28074919478b6422588385850f0450d788ad06829adca29ae5cf2cac798692";
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
