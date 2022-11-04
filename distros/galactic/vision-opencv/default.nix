
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-galactic-vision-opencv";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/galactic/vision_opencv/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "47b6b218795b6cb89f22ddbfe78a3e0c2bdaa312814acbba999797e93bc385e0";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ cv-bridge image-geometry ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Packages for interfacing ROS2 with OpenCV, a library of programming functions for real time computer vision.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
