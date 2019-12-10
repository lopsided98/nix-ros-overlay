
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-crystal-vision-opencv";
  version = "2.1.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/crystal/vision_opencv/2.1.0-0.tar.gz";
    name = "2.1.0-0.tar.gz";
    sha256 = "c5c3156bb5a3c568428b126aa2f70fc9f811283d834d0a01b74c452dbde8f2e9";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ cv-bridge image-geometry ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Packages for interfacing ROS2 with OpenCV, a library of programming functions for real time computer vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
