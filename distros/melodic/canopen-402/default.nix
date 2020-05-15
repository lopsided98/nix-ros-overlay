
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-master, catkin, class-loader, rosunit }:
buildRosPackage {
  pname = "ros-melodic-canopen-402";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/canopen_402/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "4bb5e798c52f0bb0e24dfb6b82d82ffb30cb187afc9699f4cfd04dc6f8afb8f5";
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
