
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, class-loader, catkin, socketcan-interface, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-canopen-master";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/canopen_master/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "0f547a56a79909f4b27b77527f1c92ee4be73ff7cb55887158fed2dc5f0dd0e2";
  };

  buildType = "catkin";
  buildInputs = [ class-loader boost socketcan-interface ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ class-loader boost socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CiA(r) CANopen 301 master implementation with support for interprocess master synchronisation.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
