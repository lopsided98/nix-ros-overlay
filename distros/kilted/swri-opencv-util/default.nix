
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-kilted-swri-opencv-util";
  version = "3.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/kilted/swri_opencv_util/3.8.1-1.tar.gz";
    name = "3.8.1-1.tar.gz";
    sha256 = "ad4a7c15e7e480ec11aea1f9c875efc91270b1b45bf261fc548a11f063508686";
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
