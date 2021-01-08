
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy, rostest, sensor-msgs, std-srvs, tf, urdfdom-py, xacro }:
buildRosPackage {
  pname = "ros-kinetic-recordit";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/ipa-jfh/robot_recorder-release/archive/release/kinetic/recordit/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "d783222fe29126a309dd00803c0d5b441f9eaf27f34bcef32e4d5e7c20dc4d9e";
  };

  buildType = "catkin";
  checkInputs = [ rostest xacro ];
  propagatedBuildInputs = [ pythonPackages.enum34 pythonPackages.simplejson rospy sensor-msgs std-srvs tf urdfdom-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Record the joint_states and/or the mobile changes (via tf) of a ROS system as three.js animation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
