
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-melodic-vision-opencv";
  version = "1.13.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vision_opencv-release/archive/release/melodic/vision_opencv/1.13.1-1.tar.gz";
    name = "1.13.1-1.tar.gz";
    sha256 = "2fc42a57860c1b384804629fd2b7eba003f8d9f6ecb449e877bc6a798ca3ec89";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for interfacing ROS with OpenCV, a library of programming functions for real time computer vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
