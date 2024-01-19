
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bondpy, catkin, geometry-msgs, message-generation, message-runtime, nodelet, python3Packages, roslaunch, rospy, rosservice, rostest, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-capabilities";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/capabilities-release/archive/release/noetic/capabilities/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "1501424f9e0037067b6f14cc81563056d02b9d642f7a2cc6c7cc1af68aa98dbc";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation rostest ];
  checkInputs = [ geometry-msgs python3Packages.coverage python3Packages.mock python3Packages.pep8 rosservice ];
  propagatedBuildInputs = [ bondpy message-runtime nodelet python3Packages.pyyaml roslaunch rospy std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package which implements capabilities, including code to parse capability interface specs, to parse capability provider specs, and implement the capability server.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
