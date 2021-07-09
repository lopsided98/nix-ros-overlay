
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gpu-voxels-ros, roscpp, uav-msgs }:
buildRosPackage {
  pname = "ros-melodic-planner";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/planner/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "bd7505bbb9cd6eef0c6815645aef588ff2af29b01be556e82b83ad1bb15f50a7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gpu-voxels-ros roscpp uav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Planner package'';
    license = with lib.licenses; [ asl20 ];
  };
}
