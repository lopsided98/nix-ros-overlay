
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-humble-swri-opencv-util";
  version = "3.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_opencv_util/3.8.1-1.tar.gz";
    name = "3.8.1-1.tar.gz";
    sha256 = "e2031abe1229e547bd7df71b566f9876323baebcf60c6c6d06d99c3358efd5c0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cv-bridge swri-math-util ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package with commonly used OpenCV functionality.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
