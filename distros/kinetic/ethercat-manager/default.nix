
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslaunch, rostest, soem }:
buildRosPackage {
  pname = "ros-kinetic-ethercat-manager";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/tork-a/minas-release/archive/release/kinetic/ethercat_manager/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "7f379c2f576c5952a53fcadb1899a5ab76154d806b4a1712fe9329dca59820c7";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ roscpp soem ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-Industrial support stack for facilitating communication with
EtherCAT networks. The code is mainly copied from https://github.com/ros-industrial/robotiq/blob/jade-devel/robotiq_ethercat/src/ethercat_manager.cpp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
