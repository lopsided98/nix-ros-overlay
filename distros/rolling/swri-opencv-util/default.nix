
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, opencv, swri-math-util }:
buildRosPackage {
  pname = "ros-rolling-swri-opencv-util";
  version = "3.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_opencv_util/3.12.0-1.tar.gz";
    name = "3.12.0-1.tar.gz";
    sha256 = "9e13391c224806bb8aa8f5e121216b80dc9ed98279639e43b2aff0c5e89a3c8c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ opencv opencv.cxxdev swri-math-util ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package with commonly used OpenCV functionality.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
