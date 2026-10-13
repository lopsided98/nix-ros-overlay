
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-linux, tobas-time-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ic-drivers";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ic_drivers/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "21da83522287a6b94e136aad0e3acaf2721a531c9d5ef9d86ca504db9b01c497";
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
