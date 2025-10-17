
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, nav-msgs, navmap-core, navmap-ros, navmap-ros-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-navmap-examples";
  version = "0.2.4-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/jazzy/navmap_examples/0.2.4-2.tar.gz";
    name = "0.2.4-2.tar.gz";
    sha256 = "ed944eec32d676e5c66cd0ae08ff26dc0c299f1b8d72fde151dad8da867807dd";
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
