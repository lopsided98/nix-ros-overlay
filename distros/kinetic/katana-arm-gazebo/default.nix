
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, controller-manager, controller-manager-msgs, gazebo-ros, joint-trajectory-controller, katana-description, katana-gazebo-plugins, robot-state-publisher, roscpp, std-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-katana-arm-gazebo";
  version = "1.1.2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana_arm_gazebo/1.1.2-0.tar.gz";
    name = "1.1.2-0.tar.gz";
    sha256 = "825f9ad6babb194166708ba91aaeedabb685bef7e0963b0ce9f246d1c6b61b2e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib controller-manager controller-manager-msgs gazebo-ros joint-trajectory-controller katana-description katana-gazebo-plugins robot-state-publisher roscpp std-msgs urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package starts a Neuronics Katana robot arm in the Gazebo simulation environment. It is modeled after the <a href="http://www.ros.org/wiki/pr2_arm_gazebo">pr2_arm_gazebo</a> package by John Hsu.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
