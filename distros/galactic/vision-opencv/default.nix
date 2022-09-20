
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-galactic-vision-opencv";
  version = "2.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/galactic/vision_opencv/2.2.1-2.tar.gz";
    name = "2.2.1-2.tar.gz";
    sha256 = "fdfdfaeaba1520e3a234fc4174e5195c34c1c0864ff7418b495ab64d8193994d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cv-bridge image-geometry ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Packages for interfacing ROS2 with OpenCV, a library of programming functions for real time computer vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
