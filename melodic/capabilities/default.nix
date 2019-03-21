
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, bondpy, catkin, pythonPackages, rosservice, rostest, message-generation, message-runtime, rospy, std-msgs, roslaunch, nodelet, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-capabilities";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/capabilities-release/archive/release/melodic/capabilities/0.2.0-0.tar.gz;
    sha256 = "adfb1e8a3002fcfc90f654c8def944f6cd7a8753b3e908b5760eca786b1546ef";
  };

  checkInputs = [ pythonPackages.mock pythonPackages.coverage pythonPackages.pep8 rosservice geometry-msgs ];
  propagatedBuildInputs = [ std-srvs message-runtime rospy std-msgs bondpy roslaunch nodelet pythonPackages.pyyaml ];
  nativeBuildInputs = [ rostest std-srvs message-generation rospy std-msgs roslaunch catkin ];

  meta = {
    description = ''Package which implements capabilities, including code to parse capability interface specs, to parse capability provider specs, and implement the capability server.'';
    #license = lib.licenses.BSD;
  };
}
