
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, class-loader, console-bridge, linuxHeaders, rosunit, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-socketcan-interface";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/socketcan_interface/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "3f830a415dd5bfdcdae7540985c0012f502c2842d78ec7cbbbc3ebd5da238ae6";
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
