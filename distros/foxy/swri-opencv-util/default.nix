
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-foxy-swri-opencv-util";
  version = "3.5.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/foxy/swri_opencv_util/3.5.2-3.tar.gz";
    name = "3.5.2-3.tar.gz";
    sha256 = "7ecdacaa4d97a15511703d2cf9fe78f3c9a30ba6e6de649a9f5803236c2d3ed6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost cv-bridge swri-math-util ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_opencv_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
