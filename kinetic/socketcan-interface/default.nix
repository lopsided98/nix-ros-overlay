
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, class-loader, catkin, linuxHeaders, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-socketcan-interface";
  version = "0.7.10";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/socketcan_interface/0.7.10-0.tar.gz;
    sha256 = "9911276f244b4a5d26acd43b2647ddecf585986e229a3331a0269b171ff7d6c0";
  };

  buildInputs = [ linuxHeaders class-loader boost ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ linuxHeaders class-loader boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic CAN interface description with helpers for filtering and driver implementation. Further a socketcan implementation based on boost::asio is included.'';
    #license = lib.licenses.LGPLv3;
  };
}
