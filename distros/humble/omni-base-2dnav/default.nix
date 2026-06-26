
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-aggregator, launch-pal, pal-maps, ros2launch }:
buildRosPackage {
  pname = "ros-humble-omni-base-2dnav";
  version = "2.22.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/omni_base_navigation-release/archive/release/humble/omni_base_2dnav/2.22.1-1.tar.gz";
    name = "2.22.1-1.tar.gz";
    sha256 = "03c9f840fe87a51d4154e9a1a30a847ad25f095aef718ff356393d23c9ac5068";
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
