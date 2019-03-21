
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, controller-manager, katana-gazebo-plugins, catkin, katana-description, joint-trajectory-controller, urdf, controller-manager-msgs, robot-state-publisher, actionlib, std-msgs, roscpp, xacro }:
buildRosPackage {
  pname = "ros-kinetic-katana-arm-gazebo";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana_arm_gazebo/1.1.2-0.tar.gz;
    sha256 = "825f9ad6babb194166708ba91aaeedabb685bef7e0963b0ce9f246d1c6b61b2e";
  };

  propagatedBuildInputs = [ gazebo-ros controller-manager katana-gazebo-plugins katana-description joint-trajectory-controller controller-manager-msgs urdf robot-state-publisher actionlib std-msgs roscpp xacro ];
  nativeBuildInputs = [ gazebo-ros controller-manager katana-gazebo-plugins catkin katana-description joint-trajectory-controller controller-manager-msgs urdf robot-state-publisher actionlib std-msgs roscpp xacro ];

  meta = {
    description = ''This package starts a Neuronics Katana robot arm in the Gazebo simulation environment. It is modeled after the <a href="http://www.ros.org/wiki/pr2_arm_gazebo">pr2_arm_gazebo</a> package by John Hsu.'';
    #license = lib.licenses.GPL;
  };
}
