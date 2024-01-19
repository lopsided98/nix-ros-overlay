
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, openni-camera, rgbd-launch, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-openni-launch";
  version = "1.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/openni_camera-release/archive/release/noetic/openni_launch/1.11.1-1.tar.gz";
    name = "1.11.1-1.tar.gz";
    sha256 = "2a09c7c74039e9db76f2b8fe47741e944ca036beabb689802dac06fc09b549fb";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ nodelet openni-camera rgbd-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files to open an OpenNI device and load all nodelets to 
     convert raw depth/RGB/IR streams to depth images, disparity images, 
     and (registered) point clouds.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
