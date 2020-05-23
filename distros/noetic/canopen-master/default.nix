
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, class-loader, rosunit, socketcan-interface }:
buildRosPackage {
  pname = "ros-noetic-canopen-master";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/noetic/canopen_master/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "fdeaab7b38cc8eeb1945231fdfa1af47a3bb8d7edfc42ea5f67d360d637a1827";
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
