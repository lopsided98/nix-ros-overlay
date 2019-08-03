
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, class-loader, catkin, socketcan-interface, rosunit }:
buildRosPackage {
  pname = "ros-melodic-canopen-master";
  version = "0.8.1-r1";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/canopen_master/0.8.1-1.tar.gz;
    sha256 = "9034297e3286ade1aa0d5f898b58551c21e93f2a12ca9984a287095d252aaf50";
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
