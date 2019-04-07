
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, bondpy, catkin, pythonPackages, rosservice, rostest, message-generation, message-runtime, rospy, std-msgs, roslaunch, nodelet, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-capabilities";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/capabilities-release/archive/release/kinetic/capabilities/0.2.0-0.tar.gz;
    sha256 = "0e077da92875d7bec29456cecf7efcd16f42e14bfb8e28ced30e86c6d9d5ff9c";
  };

  buildInputs = [ rostest std-srvs message-generation rospy std-msgs roslaunch ];
  checkInputs = [ pythonPackages.mock pythonPackages.coverage pythonPackages.pep8 rosservice geometry-msgs ];
  propagatedBuildInputs = [ std-srvs message-runtime rospy std-msgs bondpy roslaunch nodelet pythonPackages.pyyaml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package which implements capabilities, including code to parse capability interface specs, to parse capability provider specs, and implement the capability server.'';
    #license = lib.licenses.BSD;
  };
}
