
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, openni-camera, rgbd-launch, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-openni-launch";
  version = "1.11.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/openni_camera-release/archive/release/kinetic/openni_launch/1.11.0-0.tar.gz";
    name = "1.11.0-0.tar.gz";
    sha256 = "ec0a07c5239ce3b8d9bf6dd9ec13f481341bf36b1f319f55240e9e101e0ee7d6";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ nodelet openni-camera rgbd-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files to open an OpenNI device and load all nodelets to 
     convert raw depth/RGB/IR streams to depth images, disparity images, 
     and (registered) point clouds.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
