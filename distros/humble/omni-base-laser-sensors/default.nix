
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-omni-base-laser-sensors";
  version = "2.18.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_navigation-release/archive/release/humble/omni_base_laser_sensors/2.18.0-1.tar.gz";
    name = "2.18.0-1.tar.gz";
    sha256 = "01881d0aa483f01d5d1c1343e0caa9396bba84e38d024a9e7c31cb1d79c8d931";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "omni_base-specific laser sensors launch and config files.";
    license = with lib.licenses; [ asl20 ];
  };
}
