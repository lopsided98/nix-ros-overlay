
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agvs-description, agvs-pad, agvs-robot-control, catkin, effort-controllers, gazebo-ros, joint-state-controller, roscpp, std-msgs, std-srvs, tf, velocity-controllers }:
buildRosPackage {
  pname = "ros-kinetic-agvs-gazebo";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/agvs_sim-release/archive/release/kinetic/agvs_gazebo/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "6de0127434c711897d57f1bbe5aa0cbf02dc036056ecfd6685602fb364fdcc0e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ agvs-description agvs-pad agvs-robot-control effort-controllers gazebo-ros joint-state-controller roscpp std-msgs std-srvs tf velocity-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The agvs_gazebo package. Launch files and worlds to run Gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
