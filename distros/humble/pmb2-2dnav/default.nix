
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-aggregator, launch-pal, pal-maps, ros2launch }:
buildRosPackage {
  pname = "ros-humble-pmb2-2dnav";
  version = "4.18.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_2dnav/4.18.2-1.tar.gz";
    name = "4.18.2-1.tar.gz";
    sha256 = "5651f29f6fc287891ec7f11019041fdd856945a7df8a4041f09209d600df73f0";
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
