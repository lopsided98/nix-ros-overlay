
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, nlohmann_json, pkg-config, ros2-medkit-cmake, ros2-medkit-gateway, systemd }:
buildRosPackage {
  pname = "ros-humble-ros2-medkit-linux-introspection";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/humble/ros2_medkit_linux_introspection/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "e410b6e2a45b225d3bf8b4d5123831769a9ff73aa84f9f1c5f50b4deb5d5ee4c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ros2-medkit-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ nlohmann_json ros2-medkit-gateway systemd ];
  nativeBuildInputs = [ ament-cmake pkg-config ros2-medkit-cmake ];

  meta = {
    description = "Linux introspection plugins for ros2_medkit gateway - procfs, systemd, and container";
    license = with lib.licenses; [ asl20 ];
  };
}
