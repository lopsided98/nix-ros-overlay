
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, hardware-interface, pluginlib, resource-retriever, roscpp, tinyxml }:
buildRosPackage {
  pname = "ros-melodic-transmission-interface";
  version = "0.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/transmission_interface/0.16.0-1.tar.gz";
    name = "0.16.0-1.tar.gz";
    sha256 = "305fa23c79689242ab502dee48bb13aa479572d896d7e7024705c89b4cfe3513";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  checkInputs = [ resource-retriever ];
  propagatedBuildInputs = [ boost hardware-interface pluginlib roscpp tinyxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Transmission Interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
