
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, ament-cmake-test, ament-lint-auto, ament-lint-common, backward-ros, launch, launch-ros, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-nav2-common";
  version = "1.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_common/1.5.3-1.tar.gz";
    name = "1.5.3-1.tar.gz";
    sha256 = "539bb9210d9d4d07129f9854db17f495826be4500e424ddbefd4fa2879c6acb9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-cmake-ros ament-cmake-test ament-lint-auto ament-lint-common python3Packages.pytest ];
  propagatedBuildInputs = [ ament-cmake-core backward-ros launch launch-ros python3Packages.osrf-pycommon python3Packages.pyyaml python3Packages.types-pyyaml rclpy ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "Common support functionality used throughout the navigation 2 stack";
    license = with lib.licenses; [ asl20 ];
  };
}
