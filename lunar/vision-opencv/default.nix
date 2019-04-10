
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-lunar-vision-opencv";
  version = "1.12.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/vision_opencv-release/archive/release/lunar/vision_opencv/1.12.8-0.tar.gz;
    sha256 = "6ecd9d55527d25c3d0c21f3bc17419e5fc325863fad1b0bf6ffdafd72c9cfb54";
  };

  propagatedBuildInputs = [ cv-bridge image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for interfacing ROS with OpenCV, a library of programming functions for real time computer vision.'';
    #license = lib.licenses.BSD;
  };
}
