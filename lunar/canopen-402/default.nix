
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, class-loader, catkin, canopen-master, rosunit }:
buildRosPackage {
  pname = "ros-lunar-canopen-402";
  version = "0.7.9";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/lunar/canopen_402/0.7.9-0.tar.gz;
    sha256 = "4fc861a723f03eecff7259f8b4ed5cdd2adeb20408c89c6eacdc8046a026de8a";
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
