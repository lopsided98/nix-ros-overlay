
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamixel-workbench-toolbox, dynamixel-workbench-msgs, roscpp, catkin }:
buildRosPackage {
  pname = "ros-melodic-dynamixel-workbench-single-manager";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/melodic/dynamixel_workbench_single_manager/2.0.0-0.tar.gz;
    sha256 = "e57e19eec42aac4c1d0d81815d7b424bdbff962165452d2712423da09d74fbfc";
  };

  propagatedBuildInputs = [ dynamixel-workbench-msgs dynamixel-workbench-toolbox roscpp ];
  nativeBuildInputs = [ catkin dynamixel-workbench-msgs dynamixel-workbench-toolbox roscpp ];

  meta = {
    description = ''This package is single manager for a Dynamixel.
    It provides a terminal environment to check the status of Dynamixel and control it before using Dynamixel'';
    #license = lib.licenses.Apache 2.0;
  };
}
