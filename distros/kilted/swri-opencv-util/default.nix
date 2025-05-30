
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-kilted-swri-opencv-util";
  version = "3.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/kilted/swri_opencv_util/3.7.5-1.tar.gz";
    name = "3.7.5-1.tar.gz";
    sha256 = "ffeb37419041f5eada0162178ef2ef4746c32a551e92b17c144a17057c392d29";
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
