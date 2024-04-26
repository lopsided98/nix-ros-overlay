
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-omni-base-laser-sensors";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_navigation-release/archive/release/humble/omni_base_laser_sensors/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "ba3499de2ba2124a05946f29698be66180c7dafc27913ea64a3419ad90243974";
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
