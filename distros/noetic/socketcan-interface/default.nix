
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, class-loader, console-bridge, linuxHeaders, rosunit, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-socketcan-interface";
  version = "0.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/noetic/socketcan_interface/0.8.5-1.tar.gz";
    name = "0.8.5-1.tar.gz";
    sha256 = "fa0431b6e832e6c4b5ddb2b009ec74c4cd4b851ca2615d5058e2715eae529ab0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit xmlrpcpp ];
  propagatedBuildInputs = [ boost class-loader console-bridge linuxHeaders ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic CAN interface description with helpers for filtering and driver implementation. Further a socketcan implementation based on boost::asio is included.'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
