
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-melodic-vision-opencv";
  version = "1.13.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vision_opencv-release/archive/release/melodic/vision_opencv/1.13.0-0.tar.gz";
    name = "1.13.0-0.tar.gz";
    sha256 = "21275f9903d17bd95c5f01a674548451006a015a2c43b4da143bb7c149667404";
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
