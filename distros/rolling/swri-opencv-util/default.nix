
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-rolling-swri-opencv-util";
  version = "3.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_opencv_util/3.7.5-1.tar.gz";
    name = "3.7.5-1.tar.gz";
    sha256 = "c3f57c2fa39eb8f5ebb430e7881f0c3562a5778c9e095bf0c27bcd6dd97b2962";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost cv-bridge swri-math-util ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package with commonly used OpenCV functionality.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
