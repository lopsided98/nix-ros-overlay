
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, camera-calibration-parsers, camera-info-manager, image-transport }:
buildRosPackage {
  pname = "ros-iron-image-common";
  version = "4.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/iron/image_common/4.2.0-3.tar.gz";
    name = "4.2.0-3.tar.gz";
    sha256 = "1c4f8fe34fabde1189e03e1a4eb405467ad13947be204fa7aed20c3565bf5f5f";
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
