
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, class-loader, rosunit, socketcan-interface }:
buildRosPackage {
  pname = "ros-melodic-canopen-master";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/canopen_master/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "b05b4c49aef57e29af6ab8ff32ad42693c590ce01a04d264fdf84c07faa144ed";
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
