
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, camera-calibration-parsers, camera-info-manager, image-transport }:
buildRosPackage {
  pname = "ros-iron-image-common";
  version = "4.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/iron/image_common/4.2.3-1.tar.gz";
    name = "4.2.3-1.tar.gz";
    sha256 = "e95fca874ae1b2cbe4aa573222c90a276b0ddb2233cb8662d6300099c7c58d95";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-calibration-parsers camera-info-manager image-transport ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Common code for working with images in ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
