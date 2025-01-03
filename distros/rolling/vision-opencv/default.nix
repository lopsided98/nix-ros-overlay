
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-rolling-vision-opencv";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/rolling/vision_opencv/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "da3e19d19b5ddcc8f06f1577d9e6ffbdf445c9b6b7a57a79f2fb6aa292c99bfd";
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
