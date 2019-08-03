
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, class-loader, catkin, linuxHeaders, rosunit }:
buildRosPackage {
  pname = "ros-melodic-socketcan-interface";
  version = "0.8.1-r1";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/socketcan_interface/0.8.1-1.tar.gz;
    sha256 = "bb0aa5efe5e63a0a75d4f2fb7595be0b72c47eb94d175b942c8e7653d5409377";
  };

  buildInputs = [ linuxHeaders class-loader boost ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ linuxHeaders class-loader boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic CAN interface description with helpers for filtering and driver implementation. Further a socketcan implementation based on boost::asio is included.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
