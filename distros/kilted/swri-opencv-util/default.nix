
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, opencv, swri-math-util }:
buildRosPackage {
  pname = "ros-kilted-swri-opencv-util";
  version = "3.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/kilted/swri_opencv_util/3.12.0-1.tar.gz";
    name = "3.12.0-1.tar.gz";
    sha256 = "6c2eb4241d9f3180ffc47160807915b2e1d4e68b3bdbcd7066b6500ce5cc05e5";
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
