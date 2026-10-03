
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, ament-lint-auto, ament-lint-common, ament-mypy, backward-ros, diff-drive-controller, joint-state-broadcaster, launch, launch-ros, launch-testing, nav2-common, nav2-loopback-sim, nav2-minimal-tb3-sim, nav2-minimal-tb4-sim, navigation2, ros-gz-bridge, ros-gz-sim, slam-toolbox, xacro }:
buildRosPackage {
  pname = "ros-lyrical-nav2-bringup";
  version = "1.5.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_bringup/1.5.2-2.tar.gz";
    name = "1.5.2-2.tar.gz";
    sha256 = "52bfe7604fe72cf27d922bbd42e8805505e30845c0baffee823c6c3e999da680";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-lint-auto ament-lint-common ament-mypy launch launch-testing ];
  propagatedBuildInputs = [ backward-ros diff-drive-controller joint-state-broadcaster launch-ros nav2-common nav2-loopback-sim nav2-minimal-tb3-sim nav2-minimal-tb4-sim navigation2 ros-gz-bridge ros-gz-sim slam-toolbox xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Bringup scripts and configurations for the Nav2 stack";
    license = with lib.licenses; [ asl20 ];
  };
}
