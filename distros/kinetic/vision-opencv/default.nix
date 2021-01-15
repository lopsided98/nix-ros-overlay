
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-kinetic-vision-opencv";
  version = "1.12.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vision_opencv-release/archive/release/kinetic/vision_opencv/1.12.8-0.tar.gz";
    name = "1.12.8-0.tar.gz";
    sha256 = "7cdc66ce48358097c9c149d7035e3bb1f95bb6e88e5460e6d6ae0c09ad37bc2d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for interfacing ROS with OpenCV, a library of programming functions for real time computer vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
