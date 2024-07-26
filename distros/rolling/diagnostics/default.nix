
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diagnostic-aggregator, diagnostic-common-diagnostics, diagnostic-updater, self-test }:
buildRosPackage {
  pname = "ros-rolling-diagnostics";
  version = "4.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/rolling/diagnostics/4.3.0-1.tar.gz";
    name = "4.3.0-1.tar.gz";
    sha256 = "e85e5e09db15238e3637a3b6735dd1dc4f82975b2b9dc0b7d48922bc0a5054bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-common-diagnostics diagnostic-updater self-test ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "diagnostics";
    license = with lib.licenses; [ bsd3 ];
  };
}
