
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-humble-swri-opencv-util";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_opencv_util/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "97ca87f1afaaa8a4fedd532e6d86f2bf2e068a0215045da50caf6f4b344f77cc";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost cv-bridge swri-math-util ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_opencv_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
