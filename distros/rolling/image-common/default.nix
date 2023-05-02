
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, camera-calibration-parsers, camera-info-manager, image-transport }:
buildRosPackage {
  pname = "ros-rolling-image-common";
  version = "4.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/rolling/image_common/4.3.0-1.tar.gz";
    name = "4.3.0-1.tar.gz";
    sha256 = "71ee643621f8f5c0a01908dd8d24eec9e52230a177a4cf71e89dd357d5e48d25";
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
