
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-humble-vision-opencv";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/humble/vision_opencv/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "f5b4ac334b2b9cf1e6fe9ca81db359137edae8b86d9fbeaf8ea450cce7859bf4";
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
