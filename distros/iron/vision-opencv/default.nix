
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-iron-vision-opencv";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/iron/vision_opencv/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "098516dfc8f278cd521aede39821739a305693a065a1412d67944abc5a4356f9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cv-bridge image-geometry ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Packages for interfacing ROS2 with OpenCV, a library of programming functions for real time computer vision.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
