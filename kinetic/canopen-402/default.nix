
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, class-loader, catkin, canopen-master, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-canopen-402";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/canopen_402/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "35f0960903eacb4d2dbe14128e07bb11ea0311d27dda687db24f0e1a178c42b1";
  };

  buildType = "catkin";
  buildInputs = [ class-loader canopen-master ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ class-loader canopen-master ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This implements the CANopen device profile for drives and motion control. CiA(r) 402'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
