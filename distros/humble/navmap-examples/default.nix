
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, launch-ros, nav-msgs, navmap-core, navmap-ros, navmap-ros-interfaces, nlohmann_json, rclcpp }:
buildRosPackage {
  pname = "ros-humble-navmap-examples";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/humble/navmap_examples/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "1766804bfdad4ecf0a6f2a5085b8fe7bd4a6fa6e1c174d92765620693df7d232";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen launch-ros nav-msgs navmap-core navmap-ros navmap-ros-interfaces nlohmann_json rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Examples related to navmap_core y navmap_ros.";
    license = with lib.licenses; [ asl20 ];
  };
}
