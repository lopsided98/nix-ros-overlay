
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, class-loader, rosunit, socketcan-interface }:
buildRosPackage {
  pname = "ros-melodic-canopen-master";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/canopen_master/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "f8b2ab544fa43dba33ce751f654a81454f59a0093950c275188ef9ade9a5e5a8";
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
