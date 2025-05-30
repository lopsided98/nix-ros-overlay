
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diagnostic-aggregator, diagnostic-common-diagnostics, diagnostic-updater, self-test }:
buildRosPackage {
  pname = "ros-rolling-diagnostics";
  version = "4.4.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/rolling/diagnostics/4.4.6-1.tar.gz";
    name = "4.4.6-1.tar.gz";
    sha256 = "5b668f7e193854e36bb1dfadb1e4716e125d6fa041c43607c9da3704fa000995";
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
