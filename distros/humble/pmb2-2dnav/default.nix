
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, nav2-bringup, pmb2-maps, rviz2 }:
buildRosPackage {
  pname = "ros-humble-pmb2-2dnav";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_2dnav/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "f6d8beefed00991c12a63493632a060ac1e5f201f4eb4ea3f6ac9cf21407518d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav2-bringup pmb2-maps rviz2 ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''PMB2-specific launch files needed to run
    navigation on the PMB2 robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
