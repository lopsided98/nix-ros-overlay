
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-omni-base-laser-sensors";
  version = "2.15.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_navigation-release/archive/release/humble/omni_base_laser_sensors/2.15.0-1.tar.gz";
    name = "2.15.0-1.tar.gz";
    sha256 = "2e703f883df03945f877a434ec3ec6015e3248193cb471d17997f1dca5cf50af";
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
