
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, launch-ros, nav-msgs, navmap-core, navmap-ros, navmap-ros-interfaces, navmap-rviz-plugin, nlohmann_json, rclcpp, rviz2 }:
buildRosPackage {
  pname = "ros-humble-navmap-examples";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/humble/navmap_examples/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "7c53d8ac88e5f48ed2e795b94ce63b3d4b9419a1543c13f509a4fd9fef3b4ed8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen launch-ros nav-msgs navmap-core navmap-ros navmap-ros-interfaces navmap-rviz-plugin nlohmann_json rclcpp rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Examples related to navmap_core y navmap_ros.";
    license = with lib.licenses; [ asl20 ];
  };
}
