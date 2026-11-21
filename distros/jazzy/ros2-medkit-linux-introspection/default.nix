
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, nlohmann_json, pkg-config, ros2-medkit-cmake, ros2-medkit-gateway, systemd }:
buildRosPackage {
  pname = "ros-jazzy-ros2-medkit-linux-introspection";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/jazzy/ros2_medkit_linux_introspection/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "17ffaf94dd14d4d62723ba75603f870ad015d1a1940093525dc81a84b06c8b4d";
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
