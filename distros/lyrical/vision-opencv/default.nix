
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-geometry }:
buildRosPackage {
  pname = "ros-lyrical-vision-opencv";
  version = "4.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/lyrical/vision_opencv/4.1.0-3.tar.gz";
    name = "4.1.0-3.tar.gz";
    sha256 = "6fda90d210a6049e2c2064f8f8b096dd6fbb9c16ea4d85d11eb4135eddc8c6f9";
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
