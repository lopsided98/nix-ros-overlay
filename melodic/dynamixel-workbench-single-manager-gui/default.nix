
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamixel-workbench-msgs, dynamixel-workbench-toolbox, qt5, roscpp }:
buildRosPackage {
  pname = "ros-melodic-dynamixel-workbench-single-manager-gui";
  version = "2.0.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/melodic/dynamixel_workbench_single_manager_gui/2.0.0-0.tar.gz";
    name = "2.0.0-0.tar.gz";
    sha256 = "3ec093cac435218696a0a1172957a05724706c83c0f644369c48bbe36161c5d3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamixel-workbench-msgs dynamixel-workbench-toolbox qt5.qtbase roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''It provides a grapic user interface to check the status of Dynamixel and control it before using Dynamixel'';
    license = with lib.licenses; [ asl20 ];
  };
}
