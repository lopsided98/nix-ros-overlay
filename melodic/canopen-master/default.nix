
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, rosunit, socketcan-interface, class-loader }:
buildRosPackage {
  pname = "ros-melodic-canopen-master";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/canopen_master/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "f75eca9da2e2e16d2f0e5397e2ed8f651bc1a84a657c9168a49619f8815145b5";
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
