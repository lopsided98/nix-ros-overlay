
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, controller-manager, urdf, robot-state-publisher, std-msgs, controller-manager-msgs, katana-gazebo-plugins, actionlib, catkin, gazebo-ros, katana-description, roscpp, joint-trajectory-controller }:
buildRosPackage {
  pname = "ros-kinetic-katana-arm-gazebo";
  version = "1.1.2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana_arm_gazebo/1.1.2-0.tar.gz";
    name = "1.1.2-0.tar.gz";
    sha256 = "825f9ad6babb194166708ba91aaeedabb685bef7e0963b0ce9f246d1c6b61b2e";
  };

  buildType = "catkin";
  buildInputs = [ xacro controller-manager urdf robot-state-publisher controller-manager-msgs std-msgs actionlib katana-gazebo-plugins gazebo-ros katana-description roscpp joint-trajectory-controller ];
  propagatedBuildInputs = [ xacro controller-manager urdf robot-state-publisher controller-manager-msgs std-msgs gazebo-ros actionlib katana-gazebo-plugins katana-description roscpp joint-trajectory-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package starts a Neuronics Katana robot arm in the Gazebo simulation environment. It is modeled after the <a href="http://www.ros.org/wiki/pr2_arm_gazebo">pr2_arm_gazebo</a> package by John Hsu.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
