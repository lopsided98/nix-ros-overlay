
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-msgs, std-srvs, catkin, pythonPackages, rospy, nodelet, bondpy, message-generation, rosservice, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-kinetic-capabilities";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/capabilities-release/archive/release/kinetic/capabilities/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "0e077da92875d7bec29456cecf7efcd16f42e14bfb8e28ced30e86c6d9d5ff9c";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs std-srvs rospy message-generation roslaunch rostest ];
  checkInputs = [ geometry-msgs pythonPackages.pep8 pythonPackages.mock pythonPackages.coverage rosservice ];
  propagatedBuildInputs = [ pythonPackages.pyyaml std-msgs std-srvs rospy nodelet bondpy message-runtime roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package which implements capabilities, including code to parse capability interface specs, to parse capability provider specs, and implement the capability server.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
