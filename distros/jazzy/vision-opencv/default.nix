
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-jazzy-vision-opencv";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/jazzy/vision_opencv/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "a57562216e7baed3d9e25c74dda06679938b08d77d7edbf9eeb7de1b1503e14d";
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
