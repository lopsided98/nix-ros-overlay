
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, class-loader, catkin, canopen-master, rosunit }:
buildRosPackage {
  pname = "ros-melodic-canopen-402";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/canopen_402/0.8.0-0.tar.gz;
    sha256 = "efde470bfc5b7f1a067d861078f5de826f05e7af4bb8dd3456f51664961d1b2c";
  };

  buildInputs = [ class-loader canopen-master ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ class-loader canopen-master ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This implements the CANopen device profile for drives and motion control. CiA(r) 402'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
