
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-linux, tobas-time-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ic-drivers";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ic_drivers/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "b235cb102b8e37fab7d664b09850a0a28d08ed1edabf66bc39a0d220ddd0145d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-linux tobas-time-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ drivers for sensors, converters, GNSS receivers, and other integrated circuits used by Tobas.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
