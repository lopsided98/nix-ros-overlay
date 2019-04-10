
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, class-loader, catkin, socketcan-interface, rosunit }:
buildRosPackage {
  pname = "ros-lunar-canopen-master";
  version = "0.7.9";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/lunar/canopen_master/0.7.9-0.tar.gz;
    sha256 = "a0cb50a391c1306ee633f0144627e24a0fb3426d2264bb499fa580ba4ad1bafa";
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
