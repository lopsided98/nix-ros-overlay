
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, camera-calibration, depth-image-proc, image-proc, image-publisher, image-rotate, image-view, stereo-image-proc }:
buildRosPackage {
  pname = "ros-rolling-image-pipeline";
  version = "7.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/rolling/image_pipeline/7.1.3-1.tar.gz";
    name = "7.1.3-1.tar.gz";
    sha256 = "1592455e7c9ca19d6eaf2b5fe38ea36c18723dda40ebe2da821744ea0cae553a";
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
