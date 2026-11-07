
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, diff-drive-controller, joint-state-broadcaster, launch, launch-ros, launch-testing, nav2-common, nav2-loopback-sim, nav2-minimal-tb3-sim, nav2-minimal-tb4-sim, navigation2, ros-gz-bridge, ros-gz-sim, slam-toolbox, xacro }:
buildRosPackage {
  pname = "ros-lyrical-nav2-bringup";
  version = "1.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_bringup/1.5.3-1.tar.gz";
    name = "1.5.3-1.tar.gz";
    sha256 = "38312ab7dec777c9e1a1f81b6afe665b94e5845a7f0096d8453e01c0851eded1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ backward-ros diff-drive-controller joint-state-broadcaster launch-ros nav2-common nav2-loopback-sim nav2-minimal-tb3-sim nav2-minimal-tb4-sim navigation2 ros-gz-bridge ros-gz-sim slam-toolbox xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Bringup scripts and configurations for the Nav2 stack";
    license = with lib.licenses; [ asl20 ];
  };
}
