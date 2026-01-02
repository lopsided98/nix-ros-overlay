
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, camera-calibration-parsers, camera-info-manager, image-transport }:
buildRosPackage {
  pname = "ros-rolling-image-common";
  version = "6.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/rolling/image_common/6.4.4-1.tar.gz";
    name = "6.4.4-1.tar.gz";
    sha256 = "92c06523e09f6e7c3bed526758e5b52faf7d545bfaa59a5fadfba9b197afa27a";
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
