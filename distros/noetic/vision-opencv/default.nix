
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-noetic-vision-opencv";
  version = "1.16.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vision_opencv-release/archive/release/noetic/vision_opencv/1.16.1-1.tar.gz";
    name = "1.16.1-1.tar.gz";
    sha256 = "ac2d8c16461688079c1b59608e917d65743477f1e0810ad18350b5998427b403";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for interfacing ROS with OpenCV, a library of programming functions for real time computer vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
