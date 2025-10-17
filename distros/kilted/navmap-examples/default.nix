
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, nav-msgs, navmap-core, navmap-ros, navmap-ros-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-navmap-examples";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/kilted/navmap_examples/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "985ed8c6792f8a7427c99a4bdfbc560b1ac6178c08e5117410b6260d912a59f7";
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
