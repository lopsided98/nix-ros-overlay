
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, opencv, swri-math-util }:
buildRosPackage {
  pname = "ros-jazzy-swri-opencv-util";
  version = "3.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/jazzy/swri_opencv_util/3.8.4-1.tar.gz";
    name = "3.8.4-1.tar.gz";
    sha256 = "1a808dd431d6c0ab4162265f483b4a1bb3ac9b6f92ca2e0dcebd6a070c331a42";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cv-bridge opencv opencv.cxxdev swri-math-util ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package with commonly used OpenCV functionality.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
