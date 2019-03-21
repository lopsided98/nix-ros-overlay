
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, class-loader, catkin, linuxHeaders, rosunit }:
buildRosPackage {
  pname = "ros-melodic-socketcan-interface";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/socketcan_interface/0.8.0-0.tar.gz;
    sha256 = "46aa16fc7db59c4b0353cba915f7ccadeff9eb1b4b1d521d166d51a10b6d53a5";
  };

  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ linuxHeaders class-loader boost ];
  nativeBuildInputs = [ linuxHeaders class-loader catkin boost ];

  meta = {
    description = ''Generic CAN interface description with helpers for filtering and driver implementation. Further a socketcan implementation based on boost::asio is included.'';
    #license = lib.licenses.LGPLv3;
  };
}
