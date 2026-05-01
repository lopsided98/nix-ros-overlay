
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, opencv, swri-math-util }:
buildRosPackage {
  pname = "ros-lyrical-swri-opencv-util";
  version = "3.8.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/lyrical/swri_opencv_util/3.8.7-3.tar.gz";
    name = "3.8.7-3.tar.gz";
    sha256 = "dfbc2df49a821db27424c574aea9d2fabf7e617035b97df6b233e12e4f786c3b";
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
