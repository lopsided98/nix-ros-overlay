
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, opencv, swri-math-util }:
buildRosPackage {
  pname = "ros-kilted-swri-opencv-util";
  version = "3.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/kilted/swri_opencv_util/3.11.0-1.tar.gz";
    name = "3.11.0-1.tar.gz";
    sha256 = "0d495afeb696ab8ca432b1956a89738ff6e677e8ee1588ae9b9afb9f3a9c25fe";
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
