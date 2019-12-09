
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, rosunit, socketcan-interface, class-loader }:
buildRosPackage {
  pname = "ros-kinetic-canopen-master";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/canopen_master/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "396f28accb120c67582c9bcd54fce1722c23fdb09b367c52846a9e631f397c55";
  };

  buildType = "catkin";
  buildInputs = [ socketcan-interface boost class-loader ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ boost class-loader socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CiA(r) CANopen 301 master implementation with support for interprocess master synchronisation.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
