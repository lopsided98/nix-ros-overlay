
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-time-tools";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_time_tools/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "dc825bde5b50d452e22df508c37683910c793aabbafb5537ee1be23557274bf9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Timing utilities for rates, stopwatches, frequency measurement, and duration operations.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
