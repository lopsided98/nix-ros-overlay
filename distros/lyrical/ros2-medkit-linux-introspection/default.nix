
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, nlohmann_json, pkg-config, ros2-medkit-cmake, ros2-medkit-gateway, systemd }:
buildRosPackage {
  pname = "ros-lyrical-ros2-medkit-linux-introspection";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/lyrical/ros2_medkit_linux_introspection/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "7ced75ae3d026913e1a78b34ee368f431c8367b61ce8d70a36e5356e9e4a76d3";
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
