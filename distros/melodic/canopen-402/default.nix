
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-master, catkin, class-loader, rosunit }:
buildRosPackage {
  pname = "ros-melodic-canopen-402";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/canopen_402/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "e1d8c37b8c3782b5ad9bb0d24fe17c64f21d4db8804dbfc73039bc519595015f";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ canopen-master class-loader ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This implements the CANopen device profile for drives and motion control. CiA(r) 402'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
