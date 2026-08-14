
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, ament-cmake-test, ament-lint-auto, ament-lint-common, ament-mypy, backward-ros, launch, launch-ros, osrf-pycommon, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-nav2-common";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_common/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "a3df0858aeebbec1cb95d08543fa69add141934ff51ccdd81131c6c1cc79f0cf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-cmake-ros ament-cmake-test ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest ];
  propagatedBuildInputs = [ ament-cmake-core backward-ros launch launch-ros osrf-pycommon python3Packages.pyyaml python3Packages.types-pyyaml rclpy ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "Common support functionality used throughout the navigation 2 stack";
    license = with lib.licenses; [ asl20 ];
  };
}
