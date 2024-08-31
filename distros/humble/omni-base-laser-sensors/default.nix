
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-omni-base-laser-sensors";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_navigation-release/archive/release/humble/omni_base_laser_sensors/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "4e32afe60a0468e60e7beeac797685a0e46a9034a5054541fcb38e77cdbe88d0";
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
