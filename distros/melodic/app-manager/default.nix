
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pythonPackages, rosgraph, roslaunch, rospack, rospy, rospy-tutorials, rosservice, rostest, rosunit, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-app-manager";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/app_manager-release/archive/release/melodic/app_manager/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "610e295d284a0d08ae2f21236ae6679832a9cffb677f60abbe33da80848d78f0";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation pythonPackages.setuptools ];
  checkInputs = [ pythonPackages.rosdep rospy-tutorials rosservice rostest ];
  propagatedBuildInputs = [ message-runtime rosgraph roslaunch rospack rospy rosunit std-srvs ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''app_manager'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
