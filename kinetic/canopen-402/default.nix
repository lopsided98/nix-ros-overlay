
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, class-loader, catkin, canopen-master, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-canopen-402";
  version = "0.7.10";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/canopen_402/0.7.10-0.tar.gz;
    sha256 = "26561921c2bc64d06b4aa4fd12faf8966454bbaa31b5de5548bdf9a0e8ce2713";
  };

  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ class-loader canopen-master ];
  nativeBuildInputs = [ class-loader catkin canopen-master ];

  meta = {
    description = ''This implements the CANopen device profile for drives and motion control. CiA(r) 402'';
    #license = lib.licenses.LGPLv3;
  };
}
