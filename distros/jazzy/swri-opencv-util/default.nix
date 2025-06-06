
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-jazzy-swri-opencv-util";
  version = "3.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/jazzy/swri_opencv_util/3.8.1-1.tar.gz";
    name = "3.8.1-1.tar.gz";
    sha256 = "a5bd07d9a341b36c0ba8c8c211b844f8861b964c56a6dfa02f828572191c8171";
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
