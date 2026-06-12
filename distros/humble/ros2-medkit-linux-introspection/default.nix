
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, nlohmann_json, pkg-config, ros2-medkit-cmake, ros2-medkit-gateway, systemd }:
buildRosPackage {
  pname = "ros-humble-ros2-medkit-linux-introspection";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/humble/ros2_medkit_linux_introspection/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "589f9175f372a7bf5b61eec9250fdb886ca8518ec4e3945d76448be8748196b9";
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
