
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, std-srvs, joint-state-controller, catkin, agvs-pad, velocity-controllers, roscpp, agvs-description, agvs-robot-control, effort-controllers, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-agvs-gazebo";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/RobotnikAutomation/agvs_sim-release/archive/release/kinetic/agvs_gazebo/0.1.3-0.tar.gz;
    sha256 = "6de0127434c711897d57f1bbe5aa0cbf02dc036056ecfd6685602fb364fdcc0e";
  };

  propagatedBuildInputs = [ gazebo-ros std-srvs joint-state-controller agvs-pad velocity-controllers roscpp agvs-description agvs-robot-control effort-controllers std-msgs tf ];
  nativeBuildInputs = [ gazebo-ros std-srvs joint-state-controller catkin agvs-pad velocity-controllers roscpp agvs-description agvs-robot-control effort-controllers std-msgs tf ];

  meta = {
    description = ''The agvs_gazebo package. Launch files and worlds to run Gazebo.'';
    #license = lib.licenses.BSD;
  };
}
