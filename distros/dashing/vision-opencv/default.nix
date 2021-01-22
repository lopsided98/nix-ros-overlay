
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-dashing-vision-opencv";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/dashing/vision_opencv/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "3ef18bee5f7dc2d00d5f694d0ca8e13d218bb6736f1da5bb5a7cc00667d1c5c3";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ cv-bridge image-geometry ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Packages for interfacing ROS2 with OpenCV, a library of programming functions for real time computer vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
