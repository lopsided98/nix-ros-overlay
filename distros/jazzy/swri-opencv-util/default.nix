
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, opencv, swri-math-util }:
buildRosPackage {
  pname = "ros-jazzy-swri-opencv-util";
  version = "3.8.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/jazzy/swri_opencv_util/3.8.7-1.tar.gz";
    name = "3.8.7-1.tar.gz";
    sha256 = "cacad48ce783437b0f462b6bc15c3675af14f9a1760ef97381e16b87c36a7cdd";
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
