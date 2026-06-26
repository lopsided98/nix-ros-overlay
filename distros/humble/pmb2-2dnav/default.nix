
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-aggregator, launch-pal, pal-maps, ros2launch }:
buildRosPackage {
  pname = "ros-humble-pmb2-2dnav";
  version = "4.21.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pmb2_navigation-release/archive/release/humble/pmb2_2dnav/4.21.1-1.tar.gz";
    name = "4.21.1-1.tar.gz";
    sha256 = "ca1b22d72a7e58f3ce4cc9228df6f038aa0af879e313b78304d5537a792ae6ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python diagnostic-aggregator launch-pal pal-maps ros2launch ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "PMB2-specific launch files needed to run
    navigation on the PMB2 robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
