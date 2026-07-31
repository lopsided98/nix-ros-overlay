
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, nav-msgs, navmap-core, navmap-ros, navmap-ros-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-navmap-examples";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/lyrical/navmap_examples/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "8f94263e9e735d561d2dfd7da06519a2c7287631e56756a008cee632a33d8e39";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav-msgs navmap-core navmap-ros navmap-ros-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Examples related to navmap_core y navmap_ros.";
    license = with lib.licenses; [ asl20 ];
  };
}
