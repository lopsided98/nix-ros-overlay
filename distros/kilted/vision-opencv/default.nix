
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-kilted-vision-opencv";
  version = "4.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/kilted/vision_opencv/4.1.0-2.tar.gz";
    name = "4.1.0-2.tar.gz";
    sha256 = "d9513ec646ffa93048333a659a2ac5f72288c6604d871337bba117551ad66d6b";
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
