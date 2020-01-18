
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-eloquent-vision-opencv";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/eloquent/vision_opencv/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "ffa2b7372b86cbb83a780c0d0c0c064537b8c82bc71265073c90ea9ae9ea1e33";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ cv-bridge image-geometry ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Packages for interfacing ROS2 with OpenCV, a library of programming functions for real time computer vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
