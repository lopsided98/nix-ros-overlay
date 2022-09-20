
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, camera-calibration-parsers, camera-info-manager, image-transport }:
buildRosPackage {
  pname = "ros-galactic-image-common";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/galactic/image_common/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "47330b6d8403c509ec0b882b339b6e0387923897229d91e152a941bff9bbe436";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-calibration-parsers camera-info-manager image-transport ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common code for working with images in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
