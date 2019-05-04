
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, class-loader, catkin, socketcan-interface, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-canopen-master";
  version = "0.7.10";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/canopen_master/0.7.10-0.tar.gz;
    sha256 = "ed0bf9861aa139470bf939eb6ca53f5b522665e201d564fe7751b72161a2e932";
  };

  buildInputs = [ class-loader boost socketcan-interface ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ class-loader boost socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CiA(r) CANopen 301 master implementation with support for interprocess master synchronisation.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
