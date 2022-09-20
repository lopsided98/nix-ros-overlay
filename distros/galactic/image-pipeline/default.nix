
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, camera-calibration, depth-image-proc, image-proc, image-publisher, image-rotate, image-view, stereo-image-proc }:
buildRosPackage {
  pname = "ros-galactic-image-pipeline";
  version = "2.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/galactic/image_pipeline/2.2.1-3.tar.gz";
    name = "2.2.1-3.tar.gz";
    sha256 = "19b79f1ef1a67a9aa992cd2976b0d869b0b25d7957d46bce95d9c32a6533ce94";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ camera-calibration depth-image-proc image-proc image-publisher image-rotate image-view stereo-image-proc ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''image_pipeline fills the gap between getting raw images from a camera driver and higher-level vision processing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
