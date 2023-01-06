
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, camera-calibration-parsers, camera-info-manager, image-transport }:
buildRosPackage {
  pname = "ros-rolling-image-common";
  version = "4.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/rolling/image_common/4.1.1-1.tar.gz";
    name = "4.1.1-1.tar.gz";
    sha256 = "50643154a7d713aae4805f26dd61ca5f79dc6df4b7e9c92db6c153311bf46eef";
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
