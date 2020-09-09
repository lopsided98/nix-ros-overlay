
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-master, catkin, class-loader, rosunit }:
buildRosPackage {
  pname = "ros-noetic-canopen-402";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/noetic/canopen_402/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "8cf52616a9b20aa72c4349489bd7138384ec01e407d5f131e8b6e4e98ebec3b0";
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
