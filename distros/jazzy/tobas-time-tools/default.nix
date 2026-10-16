
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-time-tools";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_time_tools/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "f537a074f589f7c3dcfdc33cd9423a7189944693d1d4c2c228efa3109174034b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Timing utilities for rates, stopwatches, frequency measurement, and duration operations.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
