
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diagnostic-aggregator, diagnostic-common-diagnostics, diagnostic-remote-logging, diagnostic-updater, self-test }:
buildRosPackage {
  pname = "ros-humble-diagnostics";
  version = "4.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/humble/diagnostics/4.0.7-1.tar.gz";
    name = "4.0.7-1.tar.gz";
    sha256 = "87bd2f366946731d30393da94a7425edb15f9705088f097ad536d292ff40d599";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-common-diagnostics diagnostic-remote-logging diagnostic-updater self-test ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Diagnostics tools for monitoring and reporting system status.";
    license = with lib.licenses; [ bsd3 ];
  };
}
