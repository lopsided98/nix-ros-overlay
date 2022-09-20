
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-foxy-vision-opencv";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/foxy/vision_opencv/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "f378194df1cacbbdecd116bf4e0eccc2d84aee0d0e66a039de2bbe72342f8472";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cv-bridge image-geometry ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Packages for interfacing ROS2 with OpenCV, a library of programming functions for real time computer vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
