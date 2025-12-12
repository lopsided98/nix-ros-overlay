
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, pcl-ros, rclcpp-lifecycle, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-easynav-core";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav_core/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "d02d6afc8ef0491f80b59f7dd6c249982dfab8b8b13e9cb8013cc9549745da12";
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
