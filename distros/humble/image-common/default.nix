
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, camera-calibration-parsers, camera-info-manager, image-transport }:
buildRosPackage {
  pname = "ros-humble-image-common";
  version = "3.1.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/humble/image_common/3.1.13-1.tar.gz";
    name = "3.1.13-1.tar.gz";
    sha256 = "d5181fa36d99674f4bce228d49b638306235ffb6f84381638bbacde2077e28de";
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
