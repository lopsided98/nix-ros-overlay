
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, opencv, swri-math-util }:
buildRosPackage {
  pname = "ros-rolling-swri-opencv-util";
  version = "3.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_opencv_util/3.8.4-1.tar.gz";
    name = "3.8.4-1.tar.gz";
    sha256 = "07391320e30817f65b7694b57390f61772a7e339e6098e184eac1e043548b42b";
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
