
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslaunch, rostest, soem }:
buildRosPackage {
  pname = "ros-melodic-ethercat-manager";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/minas-release/archive/release/melodic/ethercat_manager/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "de54e41f6f741c656d0b4124f7c9d9b2329e4364efef0463ee32ed2635b7b17f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ roscpp soem ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-Industrial support stack for facilitating communication with
EtherCAT networks. The code is mainly copied from https://github.com/ros-industrial/robotiq/blob/jade-devel/robotiq_ethercat/src/ethercat_manager.cpp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
