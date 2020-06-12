
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-foxy-vision-opencv";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/foxy/vision_opencv/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "a8b7cc4af3252afa0a38c60fead3176d5e12667be582ded8a1212760b38e5947";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ cv-bridge image-geometry ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Packages for interfacing ROS2 with OpenCV, a library of programming functions for real time computer vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
