
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diagnostic-aggregator, diagnostic-common-diagnostics, diagnostic-remote-logging, diagnostic-updater, self-test }:
buildRosPackage {
  pname = "ros-lyrical-diagnostics";
  version = "4.4.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/lyrical/diagnostics/4.4.7-1.tar.gz";
    name = "4.4.7-1.tar.gz";
    sha256 = "00fad7cc6e566b6f306f5051df4ea811d7b78f39bb1e7f70ec91fb22258a993a";
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
