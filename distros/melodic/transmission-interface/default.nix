
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, hardware-interface, pluginlib, resource-retriever, roscpp, tinyxml }:
buildRosPackage {
  pname = "ros-melodic-transmission-interface";
  version = "0.18.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/transmission_interface/0.18.3-1.tar.gz";
    name = "0.18.3-1.tar.gz";
    sha256 = "386fc220e65adee3bbd695bf09363c953a1569cba4b610c8049da3a20691b0a1";
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
