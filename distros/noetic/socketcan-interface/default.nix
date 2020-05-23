
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, class-loader, console-bridge, linuxHeaders, rosunit }:
buildRosPackage {
  pname = "ros-noetic-socketcan-interface";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/noetic/socketcan_interface/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "9e81f5c3de276cb6f145d98bcb885d2990ccbaad84b93cb299719bd26df0d121";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ boost class-loader console-bridge linuxHeaders ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic CAN interface description with helpers for filtering and driver implementation. Further a socketcan implementation based on boost::asio is included.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
