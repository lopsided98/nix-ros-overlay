
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, class-loader, linuxHeaders, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-socketcan-interface";
  version = "0.7.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/socketcan_interface/0.7.13-1.tar.gz";
    name = "0.7.13-1.tar.gz";
    sha256 = "68f1f7042f644cb95de44a6f8fe8c4797918d49f365fb15fbbbd5ab11da5e6ab";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ boost class-loader linuxHeaders ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic CAN interface description with helpers for filtering and driver implementation. Further a socketcan implementation based on boost::asio is included.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
