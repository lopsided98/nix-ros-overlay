
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamixel-workbench-msgs, dynamixel-workbench-toolbox, qt5, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-dynamixel-workbench-single-manager-gui";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/kinetic/dynamixel_workbench_single_manager_gui/2.0.0-0.tar.gz;
    sha256 = "8727794a14e886ddd94be2361f752b26a348d9ffe3895b967ec99dc351a41c55";
  };

  buildInputs = [ roscpp dynamixel-workbench-msgs dynamixel-workbench-toolbox qt5.qtbase ];
  propagatedBuildInputs = [ dynamixel-workbench-msgs dynamixel-workbench-toolbox roscpp qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''It provides a grapic user interface to check the status of Dynamixel and control it before using Dynamixel'';
    #license = lib.licenses.Apache 2.0;
  };
}
