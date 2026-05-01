
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diagnostic-aggregator, diagnostic-common-diagnostics, diagnostic-updater, self-test }:
buildRosPackage {
  pname = "ros-lyrical-diagnostics";
  version = "4.4.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/lyrical/diagnostics/4.4.6-3.tar.gz";
    name = "4.4.6-3.tar.gz";
    sha256 = "a5c5f96473e38a8de10dad3a09496c48bf78a9e9c98df3860d5cfa06a35b0d1b";
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
