
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, naoqi-pose, naoqi-driver-py, nao-description, robot-state-publisher, naoqi-sensors-py, naoqi-driver, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-kinetic-nao-bringup";
  version = "0.5.15";

  src = fetchurl {
    url = https://github.com/ros-naoqi/nao_robot-release/archive/release/kinetic/nao_bringup/0.5.15-0.tar.gz;
    sha256 = "3aafd40278ac6fbda007f8b64b1c167d1545db89798de3f03ad789dcf5e523b4";
  };

  propagatedBuildInputs = [ naoqi-driver-py nao-description robot-state-publisher naoqi-sensors-py naoqi-driver naoqi-pose diagnostic-aggregator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and scripts needed to bring ROS interfaces for Nao up into a
      running state.'';
    #license = lib.licenses.BSD;
  };
}
