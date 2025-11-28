
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, nav-msgs, navmap-core, navmap-ros, navmap-ros-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-navmap-examples";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/jazzy/navmap_examples/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "3ec07e4e3611997ee413037100e75530960fa9d523e9995117d4c124aae6755e";
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
