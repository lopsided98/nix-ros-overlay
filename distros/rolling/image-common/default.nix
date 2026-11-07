
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, camera-calibration-parsers, camera-info-manager, image-transport }:
buildRosPackage {
  pname = "ros-rolling-image-common";
  version = "7.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/rolling/image_common/7.0.5-1.tar.gz";
    name = "7.0.5-1.tar.gz";
    sha256 = "ca58f33715459b0c9310c76d1ed745a5c92b7b22746f6162571908fb6218bc9a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-calibration-parsers camera-info-manager image-transport ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Common code for working with images in ROS.";
    license = with lib.licenses; [ bsd3 ];
  };
}
