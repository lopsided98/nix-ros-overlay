
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, class-loader, catkin, canopen-master, rosunit }:
buildRosPackage {
  pname = "ros-melodic-canopen-402";
  version = "0.8.1-r1";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/canopen_402/0.8.1-1.tar.gz;
    sha256 = "c0daf1aa2a7d9f3509e9e0e631f7453f58fa8674a00e8471d2241b2ce8fcd5b9";
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
