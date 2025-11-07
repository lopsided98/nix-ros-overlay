
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-aggregator, launch-pal, pal-maps, ros2launch }:
buildRosPackage {
  pname = "ros-humble-omni-base-2dnav";
  version = "2.19.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_navigation-release/archive/release/humble/omni_base_2dnav/2.19.1-1.tar.gz";
    name = "2.19.1-1.tar.gz";
    sha256 = "a2f9582162a07c4758cf6b0cf7a2f5c131fad39c4c70ec775f914481c59c4c08";
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
