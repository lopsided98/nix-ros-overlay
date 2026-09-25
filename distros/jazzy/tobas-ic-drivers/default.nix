
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-linux, tobas-time-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ic-drivers";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ic_drivers/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "10f290fcbd5a054dd5909194a369ae8b134032ab1d15a51e3dc845f614d04901";
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
