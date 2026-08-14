
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-aggregator, launch-pal, pal-maps, ros2launch }:
buildRosPackage {
  pname = "ros-humble-omni-base-2dnav";
  version = "2.24.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/omni_base_navigation-release/archive/release/humble/omni_base_2dnav/2.24.2-1.tar.gz";
    name = "2.24.2-1.tar.gz";
    sha256 = "df750a4cf011f874106b002ef2e537535233e0f0a4702d0ce13a40783e6a3dd6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python diagnostic-aggregator launch-pal pal-maps ros2launch ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "omni_base-specific launch files needed to run
    navigation on the omni_base robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
