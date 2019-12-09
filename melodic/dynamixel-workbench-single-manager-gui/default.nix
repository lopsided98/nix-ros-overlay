
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamixel-workbench-msgs, catkin, roscpp, qt5, dynamixel-workbench-toolbox }:
buildRosPackage {
  pname = "ros-melodic-dynamixel-workbench-single-manager-gui";
  version = "2.0.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/melodic/dynamixel_workbench_single_manager_gui/2.0.0-0.tar.gz";
    name = "2.0.0-0.tar.gz";
    sha256 = "3ec093cac435218696a0a1172957a05724706c83c0f644369c48bbe36161c5d3";
  };

  buildType = "catkin";
  buildInputs = [ dynamixel-workbench-toolbox dynamixel-workbench-msgs roscpp qt5.qtbase ];
  propagatedBuildInputs = [ dynamixel-workbench-toolbox dynamixel-workbench-msgs roscpp qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''It provides a grapic user interface to check the status of Dynamixel and control it before using Dynamixel'';
    license = with lib.licenses; [ asl20 ];
  };
}
