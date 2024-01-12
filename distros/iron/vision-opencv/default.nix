
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-iron-vision-opencv";
  version = "3.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/iron/vision_opencv/3.4.0-3.tar.gz";
    name = "3.4.0-3.tar.gz";
    sha256 = "3b0298426087c7f536c15ec1af13c4ea88bcfb11b4b79d258efad711fc77c341";
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
