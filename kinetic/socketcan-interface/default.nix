
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, class-loader, catkin, linuxHeaders, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-socketcan-interface";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/socketcan_interface/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "447dcb26ffb9e3bd9059e44f12372d401aa14740cd3aeae1af75c75c9fbb0f35";
  };

  buildType = "catkin";
  buildInputs = [ linuxHeaders class-loader boost ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ linuxHeaders class-loader boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic CAN interface description with helpers for filtering and driver implementation. Further a socketcan implementation based on boost::asio is included.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
