
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, diff-drive-controller, joint-state-broadcaster, launch, launch-ros, launch-testing, nav2-common, nav2-minimal-tb3-sim, nav2-minimal-tb4-sim, navigation2, ros-gz-bridge, ros-gz-sim, slam-toolbox, xacro }:
buildRosPackage {
  pname = "ros-jazzy-nav2-bringup";
  version = "1.3.5-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav2_bringup/1.3.5-1.tar.gz";
    name = "1.3.5-1.tar.gz";
    sha256 = "aefdafcb456e7fe2ab4c1447a6d0963521bed341cd4f88544e10a049116b0523";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ diff-drive-controller joint-state-broadcaster launch-ros nav2-common nav2-minimal-tb3-sim nav2-minimal-tb4-sim navigation2 ros-gz-bridge ros-gz-sim slam-toolbox xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Bringup scripts and configurations for the Nav2 stack";
    license = with lib.licenses; [ asl20 ];
  };
}
