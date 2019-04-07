
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rgbd-launch, roslaunch, nodelet, openni-camera }:
buildRosPackage {
  pname = "ros-melodic-openni-launch";
  version = "1.11.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/openni_camera-release/archive/release/melodic/openni_launch/1.11.1-0.tar.gz;
    sha256 = "0c4aa79a977973fc48b0c8a829358367a3ef095a8d93323eeee1972c5c8d3806";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ rgbd-launch nodelet openni-camera ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files to open an OpenNI device and load all nodelets to 
     convert raw depth/RGB/IR streams to depth images, disparity images, 
     and (registered) point clouds.'';
    #license = lib.licenses.BSD;
  };
}
