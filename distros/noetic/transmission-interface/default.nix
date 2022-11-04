
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, hardware-interface, pluginlib, resource-retriever, roscpp, tinyxml }:
buildRosPackage {
  pname = "ros-noetic-transmission-interface";
  version = "0.19.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/transmission_interface/0.19.6-1.tar.gz";
    name = "0.19.6-1.tar.gz";
    sha256 = "755e35de9c948073f5f97bcef76dfc4f9d851e6d1f18b892acf3ea8355315485";
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
