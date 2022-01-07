
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, camera-calibration-parsers, camera-info-manager, image-transport }:
buildRosPackage {
  pname = "ros-galactic-image-common";
  version = "2.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/galactic/image_common/2.3.0-3.tar.gz";
    name = "2.3.0-3.tar.gz";
    sha256 = "4567b119ceb2e52c78b5c1fd017901f7b91e33c6bbdb836f1d35db892dbb7090";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-calibration-parsers camera-info-manager image-transport ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common code for working with images in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
