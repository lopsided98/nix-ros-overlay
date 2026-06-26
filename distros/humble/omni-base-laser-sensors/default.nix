
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-humble-omni-base-laser-sensors";
  version = "2.22.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/omni_base_navigation-release/archive/release/humble/omni_base_laser_sensors/2.22.1-1.tar.gz";
    name = "2.22.1-1.tar.gz";
    sha256 = "01687d91b66a1899f89dd1631b3307d32492dcc6b83e8e113930384020678eb2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python diagnostic-aggregator ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "omni_base-specific laser sensors launch and config files.";
    license = with lib.licenses; [ asl20 ];
  };
}
