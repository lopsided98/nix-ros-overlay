
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, nlohmann_json, pkg-config, ros2-medkit-cmake, ros2-medkit-gateway, systemd }:
buildRosPackage {
  pname = "ros-lyrical-ros2-medkit-linux-introspection";
  version = "0.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/lyrical/ros2_medkit_linux_introspection/0.5.0-3.tar.gz";
    name = "0.5.0-3.tar.gz";
    sha256 = "c360d4388c0f4c7b0f1c07183ba8d8eb35d67e688fdfda6a6bcf8ddba8e8ccbe";
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
