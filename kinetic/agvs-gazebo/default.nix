
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, effort-controllers, agvs-pad, std-msgs, std-srvs, agvs-robot-control, tf, catkin, roscpp, gazebo-ros, agvs-description, joint-state-controller, velocity-controllers }:
buildRosPackage {
  pname = "ros-kinetic-agvs-gazebo";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/agvs_sim-release/archive/release/kinetic/agvs_gazebo/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "6de0127434c711897d57f1bbe5aa0cbf02dc036056ecfd6685602fb364fdcc0e";
  };

  buildType = "catkin";
  buildInputs = [ effort-controllers agvs-pad std-msgs std-srvs agvs-robot-control tf roscpp gazebo-ros agvs-description joint-state-controller velocity-controllers ];
  propagatedBuildInputs = [ effort-controllers agvs-pad std-msgs std-srvs agvs-robot-control tf roscpp gazebo-ros agvs-description joint-state-controller velocity-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The agvs_gazebo package. Launch files and worlds to run Gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
