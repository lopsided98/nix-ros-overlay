
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamixel-workbench-toolbox, dynamixel-workbench-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-dynamixel-workbench-single-manager";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/kinetic/dynamixel_workbench_single_manager/2.0.0-0.tar.gz;
    sha256 = "7ade6200b559099cd96e36dfac6316ee70fb50d21d592406fc7fec37e0f7b2ac";
  };

  buildInputs = [ dynamixel-workbench-msgs dynamixel-workbench-toolbox roscpp ];
  propagatedBuildInputs = [ dynamixel-workbench-msgs dynamixel-workbench-toolbox roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is single manager for a Dynamixel.
    It provides a terminal environment to check the status of Dynamixel and control it before using Dynamixel'';
    license = with lib.licenses; [ asl20 ];
  };
}
