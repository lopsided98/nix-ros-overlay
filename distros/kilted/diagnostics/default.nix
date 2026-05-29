
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diagnostic-aggregator, diagnostic-common-diagnostics, diagnostic-remote-logging, diagnostic-updater, self-test }:
buildRosPackage {
  pname = "ros-kilted-diagnostics";
  version = "4.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/kilted/diagnostics/4.3.7-1.tar.gz";
    name = "4.3.7-1.tar.gz";
    sha256 = "895de4c71e2cf569a30460c055a8276f3c43a0e4d92a32efd5cae3182f276c38";
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
