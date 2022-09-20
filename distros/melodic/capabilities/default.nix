
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bondpy, catkin, geometry-msgs, message-generation, message-runtime, nodelet, pythonPackages, roslaunch, rospy, rosservice, rostest, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-capabilities";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/capabilities-release/archive/release/melodic/capabilities/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "adfb1e8a3002fcfc90f654c8def944f6cd7a8753b3e908b5760eca786b1546ef";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation rostest ];
  checkInputs = [ geometry-msgs pythonPackages.coverage pythonPackages.mock pythonPackages.pep8 rosservice ];
  propagatedBuildInputs = [ bondpy message-runtime nodelet pythonPackages.pyyaml roslaunch rospy std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package which implements capabilities, including code to parse capability interface specs, to parse capability provider specs, and implement the capability server.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
