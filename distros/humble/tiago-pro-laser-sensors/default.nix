
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, omni-base-laser-sensors }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-laser-sensors";
  version = "2.13.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_pro_navigation-release/archive/release/humble/tiago_pro_laser_sensors/2.13.3-1.tar.gz";
    name = "2.13.3-1.tar.gz";
    sha256 = "818789e341f171da121be2f186ca01a01682c800f7ef5000cf1cea1d9af203cf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ omni-base-laser-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "tiago_pro-specific laser sensors launch and config files.";
    license = with lib.licenses; [ asl20 ];
  };
}
