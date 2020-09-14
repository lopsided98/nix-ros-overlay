
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, class-loader, console-bridge, linuxHeaders, rosunit, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-socketcan-interface";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/noetic/socketcan_interface/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "9bde4150b5559c96c308fe388ecb4d7872f73f2299be7b42cd6591f23b0ce917";
  };

  buildType = "catkin";
  checkInputs = [ rosunit xmlrpcpp ];
  propagatedBuildInputs = [ boost class-loader console-bridge linuxHeaders ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic CAN interface description with helpers for filtering and driver implementation. Further a socketcan implementation based on boost::asio is included.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
