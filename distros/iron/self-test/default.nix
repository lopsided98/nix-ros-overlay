
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-iron-self-test";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/iron/self_test/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "6aefaefb1047eee2deb995f7b2a4e0055c853e408708eb1cc912897a5d154954";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "self_test";
    license = with lib.licenses; [ bsd3 ];
  };
}
