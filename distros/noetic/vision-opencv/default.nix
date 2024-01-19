
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-noetic-vision-opencv";
  version = "1.16.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vision_opencv-release/archive/release/noetic/vision_opencv/1.16.2-1.tar.gz";
    name = "1.16.2-1.tar.gz";
    sha256 = "2f6b0d514c98c13cc41c36e833d26423379efe0a035a7390589b0c13c6d4c2e2";
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
