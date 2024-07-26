
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, camera-calibration, depth-image-proc, image-proc, image-publisher, image-rotate, image-view, stereo-image-proc }:
buildRosPackage {
  pname = "ros-rolling-image-pipeline";
  version = "6.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/rolling/image_pipeline/6.0.2-1.tar.gz";
    name = "6.0.2-1.tar.gz";
    sha256 = "5e92dd001c7c1234fa9b071ff3bf6656a3091de2c26a8b9bcea91a0a0e9c3438";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ camera-calibration depth-image-proc image-proc image-publisher image-rotate image-view stereo-image-proc ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "image_pipeline fills the gap between getting raw images from a camera driver and higher-level vision processing.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
