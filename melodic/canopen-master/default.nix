
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, class-loader, catkin, socketcan-interface, rosunit }:
buildRosPackage {
  pname = "ros-melodic-canopen-master";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/canopen_master/0.8.0-0.tar.gz;
    sha256 = "89f6dfd60a4aac3dfa09d192fa08d5f4512de568af52377d9ae64e7ff271d186";
  };

  buildInputs = [ class-loader boost socketcan-interface ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ class-loader boost socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CiA(r) CANopen 301 master implementation with support for interprocess master synchronisation.'';
    #license = lib.licenses.LGPLv3;
  };
}
