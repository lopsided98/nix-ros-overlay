
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, camera-calibration-parsers, camera-info-manager, image-transport }:
buildRosPackage {
  pname = "ros-humble-image-common";
  version = "3.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/humble/image_common/3.1.6-1.tar.gz";
    name = "3.1.6-1.tar.gz";
    sha256 = "351fb492a563575850a31bdcbd8385a0075bbd916bc917c11226c0824000cc7d";
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
