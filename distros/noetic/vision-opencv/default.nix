
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-noetic-vision-opencv";
  version = "1.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vision_opencv-release/archive/release/noetic/vision_opencv/1.16.0-1.tar.gz";
    name = "1.16.0-1.tar.gz";
    sha256 = "d981b709aa5f94a2464ffc0f1c2974ac064380ebd62d2a29a8a61d81958b1032";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for interfacing ROS with OpenCV, a library of programming functions for real time computer vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
