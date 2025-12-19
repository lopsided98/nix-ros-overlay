
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, pcl-ros, rclcpp-lifecycle, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-easynav-core";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav_core/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "99d643691453326bbb6fb08cd83bfaf0b6377c03a295d64d995fc32e29eb2321";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common pcl-ros rclcpp-lifecycle tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Abstract interfaces for easynav plugins.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
