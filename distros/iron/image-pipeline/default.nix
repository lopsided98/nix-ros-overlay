
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, camera-calibration, depth-image-proc, image-proc, image-publisher, image-rotate, image-view, stereo-image-proc }:
buildRosPackage {
  pname = "ros-iron-image-pipeline";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/iron/image_pipeline/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "c3b16b77dbc06bbec7a91541d093e9e100b5377dca2ef61e2e3f4895525daee4";
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
