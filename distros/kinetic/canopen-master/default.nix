
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, class-loader, rosunit, socketcan-interface }:
buildRosPackage {
  pname = "ros-kinetic-canopen-master";
  version = "0.7.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/canopen_master/0.7.13-1.tar.gz";
    name = "0.7.13-1.tar.gz";
    sha256 = "d0f4e690516b1b294d5091aedc7f35bd79295909c95a944e826fd07f9ea7c214";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ boost class-loader socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CiA(r) CANopen 301 master implementation with support for interprocess master synchronisation.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
