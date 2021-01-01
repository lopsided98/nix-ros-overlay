
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-noetic-vision-opencv";
  version = "1.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vision_opencv-release/archive/release/noetic/vision_opencv/1.15.0-1.tar.gz";
    name = "1.15.0-1.tar.gz";
    sha256 = "b586a0f0e0e4fe0cce9980cdf8f8f9f7d1633fe6c2ba13ed5dce0e3c553e5e9d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for interfacing ROS with OpenCV, a library of programming functions for real time computer vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
