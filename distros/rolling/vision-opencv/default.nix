
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-rolling-vision-opencv";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/rolling/vision_opencv/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "033dae23f69686b5ba893014c13da0d8163993dfa214df5c25db9986aa0614f7";
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
