
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-humble-vision-opencv";
  version = "3.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/humble/vision_opencv/3.0.3-2.tar.gz";
    name = "3.0.3-2.tar.gz";
    sha256 = "7395cd081fdf8ae255caa2f8268a3f61aab6a835e7c3c4382ea46c83c2c55168";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ cv-bridge image-geometry ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Packages for interfacing ROS2 with OpenCV, a library of programming functions for real time computer vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
