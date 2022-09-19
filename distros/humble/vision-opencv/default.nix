
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-humble-vision-opencv";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/humble/vision_opencv/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "bb5af5cdf96c7f649020922af7e8cb3dd16eb43b518f327aacf0669d4f90184d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cv-bridge image-geometry ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Packages for interfacing ROS2 with OpenCV, a library of programming functions for real time computer vision.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
