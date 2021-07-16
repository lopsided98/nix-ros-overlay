
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nodelet, pcl-ros, pluginlib, tf }:
buildRosPackage {
  pname = "ros-melodic-gpu-voxels-ros";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/gpu_voxels_ros/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "73293c29cad9643173c6c62b245025f45cce4fd5707ff35f9432262b5998b878";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nodelet pcl-ros pluginlib tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gpu_voxels package'';
    license = with lib.licenses; [ asl20 ];
  };
}
