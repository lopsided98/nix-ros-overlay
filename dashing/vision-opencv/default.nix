
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, ament-cmake, image-geometry }:
buildRosPackage {
  pname = "ros-dashing-vision-opencv";
  version = "2.1.2-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/vision_opencv-release/archive/release/dashing/vision_opencv/2.1.2-1.tar.gz;
    sha256 = "5d70f73f3e55ce12e828fc65b58cd3ae99ca485a296f3d29538b943419362c11";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ cv-bridge image-geometry ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Packages for interfacing ROS2 with OpenCV, a library of programming functions for real time computer vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
