
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, camera-calibration-parsers, camera-info-manager, image-transport }:
buildRosPackage {
  pname = "ros-kilted-image-common";
  version = "6.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/kilted/image_common/6.1.1-1.tar.gz";
    name = "6.1.1-1.tar.gz";
    sha256 = "071a45294dd1769add0fd4674dee5265c1963df886cb8bbe98d534b48087d448";
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
